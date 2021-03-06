#Copyright (C) 2016 Marvell International Ltd.
#
#Marvell BSD License Option
#
#If you received this File from Marvell, you may opt to use, redistribute and/or
#modify this File under the following licensing terms.
#Redistribution and use in source and binary forms, with or without modification,
#are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.
#
# * Neither the name of Marvell nor the names of its contributors may be
# used to endorse or promote products derived from this software without
# specific prior written permission.
#
#THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
#ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
#WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
#DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
#ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
#(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
#LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
#ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
#(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
#SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                  = Armada80x0
  PLATFORM_GUID                  = d468b3d9-18ba-41c5-90a9-6df1ef862bbb
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = OpenPlatformPkg/Platforms/Marvell/Armada/Armada8040.fdf

!include Armada.dsc.inc

[BuildOptions]
  *_*_*_PLATFORM_FLAGS = -fno-unwind-tables

################################################################################
#
# Pcd Section - list of all EDK II PCD Entries defined by this Platform
#
################################################################################
[PcdsFixedAtBuild.common]
  #MPP
  gMarvellTokenSpaceGuid.PcdMppChipCount|2

  # APN806-A0 MPP SET
  gMarvellTokenSpaceGuid.PcdChip0MppReverseFlag|FALSE
  gMarvellTokenSpaceGuid.PcdChip0MppBaseAddress|0xF06F4000
  gMarvellTokenSpaceGuid.PcdChip0MppPinCount|20
  gMarvellTokenSpaceGuid.PcdChip0MppSel0|{ 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1 }
  gMarvellTokenSpaceGuid.PcdChip0MppSel1|{ 0x1, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3 }

  # CP110-MASTER MPP SET - Router configuration
  gMarvellTokenSpaceGuid.PcdChip1MppReverseFlag|FALSE
  gMarvellTokenSpaceGuid.PcdChip1MppBaseAddress|0xF2440000
  gMarvellTokenSpaceGuid.PcdChip1MppPinCount|64
  gMarvellTokenSpaceGuid.PcdChip1MppSel0|{ 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff }
  gMarvellTokenSpaceGuid.PcdChip1MppSel1|{ 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff }
  gMarvellTokenSpaceGuid.PcdChip1MppSel2|{ 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff }
  gMarvellTokenSpaceGuid.PcdChip1MppSel3|{ 0xff, 0xff, 0x7,  0x0,  0x7,  0xa,  0xa,  0x2,  0x2,  0x0 }
  gMarvellTokenSpaceGuid.PcdChip1MppSel4|{ 0x9,  0x9,  0x8,  0x8,  0x1,  0x1,  0x1,  0x1,  0x1,  0x1 }
  gMarvellTokenSpaceGuid.PcdChip1MppSel5|{ 0x1,  0x1,  0x1,  0x1,  0x1,  0x1,  0xE,  0xE,  0xE,  0xE }
  gMarvellTokenSpaceGuid.PcdChip1MppSel6|{ 0xE,  0xE,  0xE, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 }

  # CP110-SLAVE MPP SET - Router configuration
  gMarvellTokenSpaceGuid.PcdChip2MppReverseFlag|FALSE
  gMarvellTokenSpaceGuid.PcdChip2MppBaseAddress|0xF4440000
  gMarvellTokenSpaceGuid.PcdChip2MppPinCount|64
  gMarvellTokenSpaceGuid.PcdChip2MppSel0|{ 0x3,  0x3,  0x3,  0x3,  0x3,  0x3,  0x3,  0x3,  0x3,  0x3 }
  gMarvellTokenSpaceGuid.PcdChip2MppSel1|{ 0x3,  0x3,  0x0,  0x3,  0x3,  0x3,  0x3,  0xff, 0xff, 0xff }
  gMarvellTokenSpaceGuid.PcdChip2MppSel2|{ 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x8,  0xff, 0xa }
  gMarvellTokenSpaceGuid.PcdChip2MppSel3|{ 0xa,  0x8,  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff }
  gMarvellTokenSpaceGuid.PcdChip2MppSel4|{ 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff }
  gMarvellTokenSpaceGuid.PcdChip2MppSel5|{ 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff }
  gMarvellTokenSpaceGuid.PcdChip2MppSel6|{ 0xff, 0xff, 0xff, 0x0,  0x0,  0x0,  0x0,  0x0,  0x0,  0x0 }

  # I2C
  gMarvellTokenSpaceGuid.PcdI2cSlaveAddresses|{ 0x50, 0x57, 0x60 }
  gMarvellTokenSpaceGuid.PcdI2cSlaveBuses|{ 0x0, 0x0, 0x0 }
  gMarvellTokenSpaceGuid.PcdEepromI2cAddresses|{ 0x50, 0x57 }
  gMarvellTokenSpaceGuid.PcdEepromI2cBuses|{ 0x0, 0x0 }
  gMarvellTokenSpaceGuid.PcdI2cBaseAddresses|L"0xF2701000;0xF2701100"
  gMarvellTokenSpaceGuid.PcdI2cClockFrequency|250000000
  gMarvellTokenSpaceGuid.PcdI2cBaudRate|100000
  gMarvellTokenSpaceGuid.PcdI2cBusCount|2

  #SPI
  gMarvellTokenSpaceGuid.PcdSpiRegBase|0xF4700680
  gMarvellTokenSpaceGuid.PcdSpiMaxFrequency|10000000
  gMarvellTokenSpaceGuid.PcdSpiClockFrequency|200000000

  gMarvellTokenSpaceGuid.PcdSpiFlashPollCmd|0x70
  gMarvellTokenSpaceGuid.PcdSpiFlashAddressCycles|3
  gMarvellTokenSpaceGuid.PcdSpiFlashEraseSize|65536
  gMarvellTokenSpaceGuid.PcdSpiFlashPageSize|256
  gMarvellTokenSpaceGuid.PcdSpiFlashId|0x20BA18

  #RamDisk
  gMarvellTokenSpaceGuid.PcdRamDiskSize|64 #64MB

  #PciEmulation
  gMarvellTokenSpaceGuid.PcdPciEDevCount|4
                                                ## XHCI1       XHCI2      SATA       MMC
  gMarvellTokenSpaceGuid.PcdPciEDevBaseAddress|L"0xF2500000;0xF2510000;0xF2540000;0xF06E0000"
  gMarvellTokenSpaceGuid.PcdPciEDevRegSize|L"0x10000;0x10000;0x30000;0x300"
  ## ClassCode1
  gMarvellTokenSpaceGuid.PcdPciEDevClassCode1|L"0x30;0x30;0x01;0x01"
  ## ClassCode2
  gMarvellTokenSpaceGuid.PcdPciEDevClassCode2|L"0x03;0x03;0x06;0x05"
  ## ClassCode3
  gMarvellTokenSpaceGuid.PcdPciEDevClassCode3|L"0x0C;0x0C;0x01;0x08"

  #ComPhy
  gMarvellTokenSpaceGuid.PcdComPhyChipCount|1

  gMarvellTokenSpaceGuid.PcdChip0ComPhyMaxLanes|6
  gMarvellTokenSpaceGuid.PcdChip0ComPhyBaseAddress|0xF2441000
  gMarvellTokenSpaceGuid.PcdChip0Hpipe3BaseAddress|0xF2120000
  gMarvellTokenSpaceGuid.PcdChip0ComPhyMuxBitCount|4
  gMarvellTokenSpaceGuid.PcdChip0Compatible|L"Cp110"

  gMarvellTokenSpaceGuid.PcdChip0ComPhyTypes|L"SGMII2;USB3_HOST0;SGMII0;SATA1;USB3_HOST1;PCIE2"
  gMarvellTokenSpaceGuid.PcdChip0ComPhySpeeds|L"3125;5000;1250;5000;5000;5000"

  #UtmiPhy
  gMarvellTokenSpaceGuid.PcdUtmiPhyCount|2
  gMarvellTokenSpaceGuid.PcdUtmiPhyRegUtmiUnit|L"0xF2580000;0xF2581000"
  gMarvellTokenSpaceGuid.PcdUtmiPhyRegUsbCfg|L"0xF2440420;0xF2440420"
  gMarvellTokenSpaceGuid.PcdUtmiPhyRegUtmiCfg|L"0xF2440440;0xF2440444"
  gMarvellTokenSpaceGuid.PcdUtmiPhyUtmiPort|L"0x0;0x1"

#MDIO
  gMarvellTokenSpaceGuid.PcdMdioBaseAddress|0xF212A200

#PHY
  gMarvellTokenSpaceGuid.PcdPhyConnectionTypes|{ 0x4, 0x4, 0x0 }
  gMarvellTokenSpaceGuid.PcdPhyDeviceIds|{ 0x0, 0x0 }
  gMarvellTokenSpaceGuid.PcdPhyStartupAutoneg|FALSE

#NET
  gMarvellTokenSpaceGuid.PcdPhySmiAddresses|{ 0xff, 0x0, 0x1 }
  gMarvellTokenSpaceGuid.PcdPp2PortNumber|3
  gMarvellTokenSpaceGuid.PcdPp2PortIds|{ 0x0, 0x1, 0x2 }
  gMarvellTokenSpaceGuid.PcdPp2GopIndexes|{ 0x0, 0x2, 0x3 }
  gMarvellTokenSpaceGuid.PcdPp2InterfaceAlwaysUp|{ 0x1, 0x1, 0x0 }
  gMarvellTokenSpaceGuid.PcdPp2InterfaceSpeed|{ 0x3, 0x4, 0x3 }
  gMarvellTokenSpaceGuid.PcdPp2SharedAddress|0xf2000000
  gMarvellTokenSpaceGuid.PcdPp2GmacBaseAddress|0xf2130e00
  gMarvellTokenSpaceGuid.PcdPp2GmacObjSize|0x1000
  gMarvellTokenSpaceGuid.PcdPp2XlgBaseAddress|0xf2130f00
  gMarvellTokenSpaceGuid.PcdPp2XlgObjSize|0x1000
  gMarvellTokenSpaceGuid.PcdPp2Rfu1BaseAddress|0xf2441000
  gMarvellTokenSpaceGuid.PcdPp2SmiBaseAddress|0xf212A200
  gMarvellTokenSpaceGuid.PcdPp2ClockFrequency|333333333

#ResetLib
  gMarvellTokenSpaceGuid.PcdResetRegAddress|0xf06f0084
  gMarvellTokenSpaceGuid.PcdResetRegMask|0x1

#SATA
  gMarvellTokenSpaceGuid.PcdSataBaseAddress|0xF2540000

[PcdsFeatureFlag.common]
  gMarvellTokenSpaceGuid.PcdSataMapPortAddress|FALSE
