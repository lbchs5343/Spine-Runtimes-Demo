package com.google.android.gms.internal.ads;

import g.cqw;
import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public abstract class zzaqy implements zzaqz {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f4474b = Logger.getLogger(zzaqy.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public final cqw f4475c = new cqw(8);

    public abstract zzarc zza(String str, byte[] bArr, String str2);

    @Override // com.google.android.gms.internal.ads.zzaqz
    public final zzarc zzb(zzhfj zzhfjVar, zzard zzardVar) throws IOException {
        int zza;
        long zzc;
        long zzb = zzhfjVar.zzb();
        cqw cqwVar = this.f4475c;
        ((ByteBuffer) cqwVar.get()).rewind().limit(8);
        do {
            zza = zzhfjVar.zza((ByteBuffer) cqwVar.get());
            if (zza == 8) {
                ((ByteBuffer) cqwVar.get()).rewind();
                long zze = zzarb.zze((ByteBuffer) cqwVar.get());
                byte[] bArr = null;
                if (zze < 8 && zze > 1) {
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(zze);
                    sb.append("). Stop parsing!");
                    f4474b.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                ((ByteBuffer) cqwVar.get()).get(bArr2);
                try {
                    String str = new String(bArr2, "ISO-8859-1");
                    if (zze == 1) {
                        ((ByteBuffer) cqwVar.get()).limit(16);
                        zzhfjVar.zza((ByteBuffer) cqwVar.get());
                        ((ByteBuffer) cqwVar.get()).position(8);
                        zzc = zzarb.zzf((ByteBuffer) cqwVar.get()) - 16;
                    } else {
                        zzc = zze == 0 ? zzhfjVar.zzc() - zzhfjVar.zzb() : zze - 8;
                    }
                    if ("uuid".equals(str)) {
                        ((ByteBuffer) cqwVar.get()).limit(((ByteBuffer) cqwVar.get()).limit() + 16);
                        zzhfjVar.zza((ByteBuffer) cqwVar.get());
                        bArr = new byte[16];
                        for (int position = ((ByteBuffer) cqwVar.get()).position() - 16; position < ((ByteBuffer) cqwVar.get()).position(); position++) {
                            bArr[position - (((ByteBuffer) cqwVar.get()).position() - 16)] = ((ByteBuffer) cqwVar.get()).get(position);
                        }
                        zzc -= 16;
                    }
                    long j = zzc;
                    zzarc zza2 = zza(str, bArr, zzardVar instanceof zzarc ? ((zzarc) zzardVar).zza() : "");
                    ((ByteBuffer) cqwVar.get()).rewind();
                    zza2.zzb(zzhfjVar, (ByteBuffer) cqwVar.get(), j, this);
                    return zza2;
                } catch (UnsupportedEncodingException e2) {
                    throw new RuntimeException(e2);
                }
            }
        } while (zza >= 0);
        zzhfjVar.zze(zzb);
        throw new EOFException();
    }
}
