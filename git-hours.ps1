$startDate = (get-date).AddDays(-7).ToString("yyyy-MM-dd HH:mm")
$endDate = (get-date).ToString("yyyy-MM-dd HH:mm")

gci -Directory | %{
    push-location $_
    git log --all --reverse --format="%ad %s" --since=$startDate --until=$endDate --author="Burton Rodman"
    pop-location
}