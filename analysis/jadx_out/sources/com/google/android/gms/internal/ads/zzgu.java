package com.google.android.gms.internal.ads;

import com.bytedance.pangle.ZeusPluginEventCallback;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* loaded from: classes3.dex */
public class zzgu extends zzge {
    public final int zzb;

    public zzgu(zzgi zzgiVar, int i, int i2) {
        super(2008);
        this.zzb = 1;
    }

    public zzgu(IOException iOException, zzgi zzgiVar, int i, int i2) {
        super(iOException, i == 2000 ? i2 != 1 ? ZeusPluginEventCallback.EVENT_START_LOAD : 2001 : i);
        this.zzb = i2;
    }

    public zzgu(String str, zzgi zzgiVar, int i, int i2) {
        super(str, i == 2000 ? i2 != 1 ? ZeusPluginEventCallback.EVENT_START_LOAD : 2001 : i);
        this.zzb = i2;
    }

    public zzgu(String str, IOException iOException, zzgi zzgiVar, int i, int i2) {
        super(str, iOException, i == 2000 ? i2 != 1 ? ZeusPluginEventCallback.EVENT_START_LOAD : 2001 : i);
        this.zzb = i2;
    }

    public static zzgu zza(IOException iOException, zzgi zzgiVar, int i) {
        String message = iOException.getMessage();
        int i2 = iOException instanceof SocketTimeoutException ? 2002 : iOException instanceof InterruptedIOException ? 1004 : (message == null || !zzfwa.zza(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        return i2 == 2007 ? new zzgt(iOException, zzgiVar) : new zzgu(iOException, zzgiVar, i2, i);
    }
}
