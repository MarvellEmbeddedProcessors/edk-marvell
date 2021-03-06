/*******************************************************************************
Copyright (C) 2016 Marvell International Ltd.

Marvell BSD License Option

If you received this File from Marvell, you may opt to use, redistribute and/or
modify this File under the following licensing terms.
Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice,
  this list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution.

* Neither the name of Marvell nor the names of its contributors may be
  used to endorse or promote products derived from this software without
  specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

*******************************************************************************/
#ifndef __EFI_SPI_MASTER_PROTOCOL_H__
#define __EFI_SPI_MASTER_PROTOCOL_H__

extern EFI_GUID gEfiSpiMasterProtocolGuid;

typedef struct _EFI_SPI_MASTER_PROTOCOL EFI_SPI_MASTER_PROTOCOL;

typedef enum {
  SPI_MODE0, // CPOL = 0 & CPHA = 0
  SPI_MODE1, // CPOL = 0 & CPHA = 1
  SPI_MODE2, // CPOL = 1 & CPHA = 0
  SPI_MODE3  // CPOL = 1 & CPHA = 1
} SPI_MODE;

typedef struct {
  INTN Cs;
  INTN MaxFreq;
  SPI_MODE Mode;
} SPI_DEVICE;

typedef
EFI_STATUS
(EFIAPI *EFI_SPI_INIT) (
  IN EFI_SPI_MASTER_PROTOCOL *This
  );

typedef
EFI_STATUS
(EFIAPI *EFI_SPI_TRANSFER) (
  IN EFI_SPI_MASTER_PROTOCOL *This,
  IN SPI_DEVICE *Slave,
  IN UINTN DataByteCount,
  IN VOID *DataOut,
  IN VOID *DataIn,
  IN UINTN Flag
  );

typedef
EFI_STATUS
(EFIAPI * EFI_SPI_READ_WRITE) (
  IN  EFI_SPI_MASTER_PROTOCOL *This,
  IN  SPI_DEVICE *Slave,
  IN  UINT8 *Cmd,
  IN  UINTN CmdSize,
  IN  UINT8 *DataOut,
  OUT UINT8 *DataIn,
  IN  UINTN DataSize
  );

typedef
SPI_DEVICE *
(EFIAPI *EFI_SPI_SETUP_DEVICE) (
  IN EFI_SPI_MASTER_PROTOCOL *This,
  IN UINTN    Cs,
  IN SPI_MODE Mode
  );

typedef
EFI_STATUS
(EFIAPI *EFI_SPI_FREE_DEVICE) (
  IN SPI_DEVICE *SpiDev
  );

struct _EFI_SPI_MASTER_PROTOCOL {
  EFI_SPI_INIT Init;
  EFI_SPI_READ_WRITE    ReadWrite;
  EFI_SPI_TRANSFER Transfer;
  EFI_SPI_SETUP_DEVICE SetupDevice;
  EFI_SPI_FREE_DEVICE FreeDevice;
};

#endif // __EFI_SPI_MASTER_PROTOCOL_H__
