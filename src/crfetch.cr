distro   = File.read_lines("/etc/os-release")[2].split(/=/)[1].lstrip('"').rstrip('"')
hostname = File.read("/etc/hostname")
kernel   = File.read("/proc/sys/kernel/osrelease")

message = "Distro   = #{distro}\n" \
          "Hostname = #{hostname}" \
          "Kernel   = #{kernel}"

puts "#{message}"
