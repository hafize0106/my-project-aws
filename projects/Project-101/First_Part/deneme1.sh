#!/bin/bash
#Cloudtrail olay geçmişi dosyasının adı
event_history_file="event_history.csv"

# Sonuç dosyasının adı
result_file="result.txt"

# Serdar kullanıcısı tarafından sonlandırılan örnek kimliklerini bulmak için greplama yap
grep "Serdar" "$event_history_file" | grep "TerminateInstances" | awk -F ',' '{split($5, a, "."); print a[2]}' > "$result_file"

echo "Serdar kullanıcısı tarafından sonlandırılan örnek kimlikleri $result_file dosyasında bulabilirsiniz."
