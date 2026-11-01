package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzgfn {

    /* renamed from: a, reason: collision with root package name */
    public final ByteArrayInputStream f8256a;

    public zzgfn(ByteArrayInputStream byteArrayInputStream) {
        this.f8256a = byteArrayInputStream;
    }

    public static zzgfn zzb(byte[] bArr) {
        return new zzgfn(new ByteArrayInputStream(bArr));
    }

    public final zzgum zza() throws IOException {
        ByteArrayInputStream byteArrayInputStream = this.f8256a;
        try {
            return zzgum.zzg(byteArrayInputStream, zzgyh.zza());
        } finally {
            byteArrayInputStream.close();
        }
    }
}
