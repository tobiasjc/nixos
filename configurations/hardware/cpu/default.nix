{ config, pkgs, ... }: {
  # Very important to keep intel microcode updated
  hardware.cpu.intel.updateMicrocode = true;
  hardware.cpu.amd.updateMicrocode = true;
}
