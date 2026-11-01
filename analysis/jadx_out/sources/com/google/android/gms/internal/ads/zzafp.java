package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzafp {

    /* renamed from: a, reason: collision with root package name */
    public final ByteArrayOutputStream f4172a;

    /* renamed from: b, reason: collision with root package name */
    public final DataOutputStream f4173b;

    public zzafp() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f4172a = byteArrayOutputStream;
        this.f4173b = new DataOutputStream(byteArrayOutputStream);
    }

    public final byte[] zza(zzafo zzafoVar) {
        DataOutputStream dataOutputStream = this.f4173b;
        ByteArrayOutputStream byteArrayOutputStream = this.f4172a;
        byteArrayOutputStream.reset();
        try {
            dataOutputStream.writeBytes(zzafoVar.zza);
            dataOutputStream.writeByte(0);
            String str = zzafoVar.zzb;
            if (str == null) {
                str = "";
            }
            dataOutputStream.writeBytes(str);
            dataOutputStream.writeByte(0);
            dataOutputStream.writeLong(zzafoVar.zzc);
            dataOutputStream.writeLong(zzafoVar.zzd);
            dataOutputStream.write(zzafoVar.zze);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }
}
