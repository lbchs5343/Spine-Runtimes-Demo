package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import g.awf;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzig extends zzbi {
    public final int zzc;
    public final String zzd;
    public final int zze;
    public final zzad zzf;
    public final int zzg;
    public final zzur zzh;
    final boolean zzi;

    static {
        Integer.toString(1001, 36);
        Integer.toString(1002, 36);
        Integer.toString(1003, 36);
        Integer.toString(1004, 36);
        Integer.toString(1005, 36);
        Integer.toString(PluginConstants.ERROR_PLUGIN_SIGN_VERIFY, 36);
    }

    public zzig(int i, Exception exc, int i2) {
        this(i, exc, i2, null, -1, null, 4, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzig(int i, Throwable th, int i2, String str, int i3, zzad zzadVar, int i4, boolean z) {
        this(TextUtils.isEmpty(null) ? r0 : r0.concat(": null"), th, i2, i, r5, r6, zzadVar, i4, null, SystemClock.elapsedRealtime(), z);
        String str2;
        int i5;
        String str3;
        String str4;
        if (i == 0) {
            str2 = str;
            i5 = i3;
            str3 = "Source error";
        } else if (i != 1) {
            str3 = "Unexpected runtime error";
            str2 = str;
            i5 = i3;
        } else {
            String valueOf = String.valueOf(zzadVar);
            int i6 = zzen.zza;
            if (i4 == 0) {
                str4 = "NO";
            } else if (i4 == 1) {
                str4 = "NO_UNSUPPORTED_TYPE";
            } else if (i4 == 2) {
                str4 = "NO_UNSUPPORTED_DRM";
            } else if (i4 == 3) {
                str4 = "NO_EXCEEDS_CAPABILITIES";
            } else {
                if (i4 != 4) {
                    throw new IllegalStateException();
                }
                str4 = "YES";
            }
            StringBuilder sb = new StringBuilder();
            str2 = str;
            sb.append(str2);
            sb.append(" error, index=");
            i5 = i3;
            sb.append(i5);
            sb.append(", format=");
            sb.append(valueOf);
            str3 = awf.ad(sb, ", format_supported=", str4);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzig(String str, Throwable th, int i, int i2, String str2, int i3, zzad zzadVar, int i4, zzur zzurVar, long j, boolean z) {
        super(str, th, i, j);
        int i5;
        boolean z2;
        Bundle bundle = Bundle.EMPTY;
        if (!z) {
            i5 = i2;
        } else {
            if (i2 != 1) {
                i5 = i2;
                z2 = false;
                zzdb.zzd(z2);
                zzdb.zzd(th != null);
                this.zzc = i5;
                this.zzd = str2;
                this.zze = i3;
                this.zzf = zzadVar;
                this.zzg = i4;
                this.zzh = zzurVar;
                this.zzi = z;
            }
            i5 = 1;
        }
        z2 = true;
        zzdb.zzd(z2);
        zzdb.zzd(th != null);
        this.zzc = i5;
        this.zzd = str2;
        this.zze = i3;
        this.zzf = zzadVar;
        this.zzg = i4;
        this.zzh = zzurVar;
        this.zzi = z;
    }

    public static zzig zzb(Throwable th, String str, int i, zzad zzadVar, int i2, boolean z, int i3) {
        return new zzig(1, th, i3, str, i, zzadVar, zzadVar == null ? 4 : i2, z);
    }

    public static zzig zzc(IOException iOException, int i) {
        return new zzig(0, iOException, i);
    }

    public static zzig zzd(RuntimeException runtimeException, int i) {
        return new zzig(2, runtimeException, i);
    }

    public final zzig a(zzur zzurVar) {
        String message = getMessage();
        int i = zzen.zza;
        return new zzig(message, getCause(), this.zza, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, zzurVar, this.zzb, this.zzi);
    }
}
