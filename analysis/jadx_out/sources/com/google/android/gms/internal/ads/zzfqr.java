package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import g.awf;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzfqr {
    public static final void a(byte[] bArr, String str, zzfpp zzfppVar) {
        StringBuilder sb = new StringBuilder("os.arch:");
        sb.append(zzfxe.OS_ARCH.zza());
        sb.append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                sb.append("supported_abis:");
                sb.append(Arrays.toString(strArr));
                sb.append(";");
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        sb.append("CPU_ABI:");
        sb.append(Build.CPU_ABI);
        sb.append(";CPU_ABI2:");
        sb.append(Build.CPU_ABI2);
        sb.append(";");
        if (bArr != null) {
            sb.append("ELF:");
            sb.append(Arrays.toString(bArr));
            sb.append(";");
        }
        if (str != null) {
            awf.a("dbg:", str, ";", sb);
        }
        zzfppVar.zzb(4007, sb.toString());
    }

    public static boolean zza(int i) {
        int i2 = i - 1;
        return i2 == 2 || i2 == 4 || i2 == 5 || i2 == 6 || i2 == 7;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int zzb(Context context, zzfpp zzfppVar) {
        int i;
        FileInputStream fileInputStream;
        byte[] bArr;
        File file = new File(new File(context.getApplicationInfo().dataDir), "lib");
        if (file.exists()) {
            File[] listFiles = file.listFiles(new zzgcf(Pattern.compile(".*\\.so$", 2)));
            if (listFiles != null && listFiles.length != 0) {
                try {
                    fileInputStream = new FileInputStream(listFiles[0]);
                    try {
                        bArr = new byte[20];
                    } finally {
                    }
                } catch (IOException e2) {
                    a(null, e2.toString(), zzfppVar);
                }
                if (fileInputStream.read(bArr) == 20) {
                    byte[] bArr2 = {0, 0};
                    if (bArr[5] != 2) {
                        bArr2[0] = bArr[19];
                        bArr2[1] = bArr[18];
                        short s = ByteBuffer.wrap(bArr2).getShort();
                        if (s == 3) {
                            fileInputStream.close();
                            i = 5;
                        } else if (s == 40) {
                            fileInputStream.close();
                            i = 3;
                        } else if (s == 62) {
                            fileInputStream.close();
                            i = 7;
                        } else if (s == 183) {
                            fileInputStream.close();
                            i = 6;
                        } else if (s != 243) {
                            a(bArr, null, zzfppVar);
                        } else {
                            fileInputStream.close();
                            i = 8;
                        }
                        if (i == 1000) {
                            HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
                            String zza = zzfxe.OS_ARCH.zza();
                            if (TextUtils.isEmpty(zza) || !hashSet.contains(zza)) {
                                try {
                                    String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
                                    if (strArr != null && strArr.length > 0) {
                                        zza = strArr[0];
                                    }
                                } catch (IllegalAccessException e3) {
                                    zzfppVar.zzc(2024, 0L, e3);
                                } catch (NoSuchFieldException e4) {
                                    zzfppVar.zzc(2024, 0L, e4);
                                }
                                zza = Build.CPU_ABI;
                                if (zza == null) {
                                    zza = Build.CPU_ABI2;
                                }
                            }
                            if (TextUtils.isEmpty(zza)) {
                                a(null, "Empty dev arch", zzfppVar);
                            } else if (zza.equalsIgnoreCase("i686") || zza.equalsIgnoreCase("x86")) {
                                i = 5;
                            } else if (zza.equalsIgnoreCase("x86_64")) {
                                i = 7;
                            } else if (zza.equalsIgnoreCase("arm64-v8a")) {
                                i = 6;
                            } else if (zza.equalsIgnoreCase("armeabi-v7a") || zza.equalsIgnoreCase("armv71")) {
                                i = 3;
                            } else if (zza.equalsIgnoreCase("riscv64")) {
                                i = 8;
                            } else {
                                a(null, zza, zzfppVar);
                            }
                            i = 1;
                        }
                        zzfppVar.zzb(5018, i != 1 ? i != 3 ? i != 5 ? i != 6 ? i != 7 ? i != 8 ? "null" : "RISCV64" : "X86_64" : "ARM64" : "X86" : "ARM7" : "UNSUPPORTED");
                        return i;
                    }
                    a(bArr, null, zzfppVar);
                }
                fileInputStream.close();
                i = 1;
                if (i == 1000) {
                }
                zzfppVar.zzb(5018, i != 1 ? i != 3 ? i != 5 ? i != 6 ? i != 7 ? i != 8 ? "null" : "RISCV64" : "X86_64" : "ARM64" : "X86" : "ARM7" : "UNSUPPORTED");
                return i;
            }
            zzfppVar.zzb(5017, "No .so");
        } else {
            zzfppVar.zzb(5017, "No lib/");
        }
        i = 1000;
        if (i == 1000) {
        }
        zzfppVar.zzb(5018, i != 1 ? i != 3 ? i != 5 ? i != 6 ? i != 7 ? i != 8 ? "null" : "RISCV64" : "X86_64" : "ARM64" : "X86" : "ARM7" : "UNSUPPORTED");
        return i;
    }
}
