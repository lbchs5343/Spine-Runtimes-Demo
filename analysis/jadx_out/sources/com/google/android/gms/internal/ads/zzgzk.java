package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class zzgzk {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f8688a;
    public static final byte[] zzb;
    public static final ByteBuffer zzc;

    static {
        Charset.forName("US-ASCII");
        f8688a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        zzb = bArr;
        zzc = ByteBuffer.wrap(bArr);
        zzgxv.c(0, bArr, 0);
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }
}
