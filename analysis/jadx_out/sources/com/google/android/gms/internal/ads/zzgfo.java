package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class zzgfo {

    /* renamed from: a, reason: collision with root package name */
    public final OutputStream f8257a;

    public zzgfo(OutputStream outputStream) {
        this.f8257a = outputStream;
    }

    public static zzgfo zzb(OutputStream outputStream) {
        return new zzgfo(outputStream);
    }

    public final void zza(zzgum zzgumVar) throws IOException {
        OutputStream outputStream = this.f8257a;
        try {
            zzgumVar.zzaU(outputStream);
        } finally {
            outputStream.close();
        }
    }
}
