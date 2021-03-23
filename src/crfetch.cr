distro   = File.read_lines("/etc/os-release")[2].split(/=/)[1].lstrip('"').rstrip('"')
hostname = File.read("/etc/hostname").rstrip('\n')
kernel   = File.read("/proc/sys/kernel/osrelease").rstrip('\n')

message = "Distro   = #{distro}\n" \
          "Hostname = #{hostname}\n" \
          "Kernel   = #{kernel}"

puts "#{message}"
