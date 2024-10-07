# root-dirtyc0w (CVE-2016-5195)
### DirtyCow root privilege escalation
Dirty COW was a race-condition vulnerability in the Linux kernel. This vulnerability lived inside the kernel functions which handle the copy-on-write (COW) feature of memory mappings and when exploited allowed processes to write to read-only files.  

An example use case of this vulnerability includes overwriting any SUID (Set User ID) binary such as passwd executable with a different elf executable (which we create) that executes /bin/sh to gain root privileges (as shown in this repository).  

You can find more executables in Linux that have the SUID bit set and change them in the exploit code here: https://pentestlab.blog/2017/09/25/suid-executables/

<div align="center">
  <div style="border: 1.5px solid #ccc; display: inline-block; padding: 4px;">
    <img src="/assets/gif/root-dirtyc0w.gif" alt="root-dirtyc0w PoC GIF" style="display: block; border: none;">
  </div>
  <p style="margin-top: 5px;"><em>Privilege Escalation PoC: Exploiting Dirty COW for Root Access (CVE-2016-5195)</em></p>
</div>
