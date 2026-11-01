package com.google.android.gms.internal.ads;

import g.dez;
import g.xo;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class zzawx extends zzaxt {
    public zzawx(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "I548ixRBwSg+qVTan0l7SrCz1ZaKKX3ZWtyXgu8y1OX29GkbAkB2rT1/ilUIPvFa", "lJ7kzsnnwzWch0Zt9duIk9QjvlIbpzkFDyarwE3sjFc=", zzasfVar, i, 24);
    }

    public final void a() {
        xo zzh = this.k.zzh();
        if (zzh == null) {
            return;
        }
        try {
            dez l = zzh.l();
            String str = l.f14078a;
            char[] cArr = zzawi.f4545a;
            if (str != null && str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID fromString = UUID.fromString(str);
                byte[] bArr = new byte[16];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                str = zzatt.zza(bArr, true);
            }
            if (str != null) {
                synchronized (this.i) {
                    this.i.zzs(str);
                    this.i.zzr(l.f14079b);
                    this.i.zzab(6);
                }
            }
        } catch (IOException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        if (this.k.zzq()) {
            a();
            return;
        }
        synchronized (this.i) {
            this.i.zzs((String) this.j.invoke(null, this.k.zzb()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxt, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzk();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final Void zzk() throws Exception {
        zzawf zzawfVar = this.k;
        if (zzawfVar.zzr()) {
            super.zzk();
            return null;
        }
        if (zzawfVar.zzq()) {
            a();
        }
        return null;
    }
}
