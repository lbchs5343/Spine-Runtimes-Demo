package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgyr;
import com.google.android.gms.internal.ads.zzgyx;
import g.fse;
import g.gxd;
import g.hj;
import java.io.IOException;

/* loaded from: classes3.dex */
public class zzgyr<MessageType extends zzgyx<MessageType, BuilderType>, BuilderType extends zzgyr<MessageType, BuilderType>> extends zzgwx<MessageType, BuilderType> {

    /* renamed from: d, reason: collision with root package name */
    public final zzgyx f8681d;

    /* renamed from: e, reason: collision with root package name */
    public zzgyx f8682e;

    public zzgyr(zzgyx zzgyxVar) {
        this.f8681d = zzgyxVar;
        if (zzgyxVar.ck()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f8682e = zzgyxVar.cm();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgwx
    public final zzgyr b(zzgwy zzgwyVar) {
        zzbj((zzgyx) zzgwyVar);
        return this;
    }

    public final void f() {
        if (this.f8682e.ck()) {
            return;
        }
        zzgyx cm = this.f8681d.cm();
        gxd.f18927a.d(cm.getClass()).k(cm, this.f8682e);
        this.f8682e = cm;
    }

    @Override // com.google.android.gms.internal.ads.zzgwx
    /* renamed from: zzaK */
    public /* bridge */ /* synthetic */ zzgwx zzaW(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
        zzbk(zzgxvVar, zzgyhVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgwx
    /* renamed from: zzaN */
    public /* bridge */ /* synthetic */ zzgwx zzaZ(byte[] bArr, int i, int i2) throws zzgzm {
        zzbl(bArr, i, i2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgwx
    /* renamed from: zzaO */
    public /* bridge */ /* synthetic */ zzgwx zzba(byte[] bArr, int i, int i2, zzgyh zzgyhVar) throws zzgzm {
        zzbm(bArr, i, i2, zzgyhVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgwx
    public /* bridge */ /* synthetic */ zzhah zzaW(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
        zzbk(zzgxvVar, zzgyhVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgwx
    public /* bridge */ /* synthetic */ zzhah zzaZ(byte[] bArr, int i, int i2) throws zzgzm {
        zzbl(bArr, i, i2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgwx
    public /* bridge */ /* synthetic */ zzhah zzba(byte[] bArr, int i, int i2, zzgyh zzgyhVar) throws zzgzm {
        zzbm(bArr, i, i2, zzgyhVar);
        return this;
    }

    public final BuilderType zzbg() {
        zzgyx zzgyxVar = this.f8681d;
        if (zzgyxVar.ck()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f8682e = zzgyxVar.cm();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgwx
    /* renamed from: zzbh, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public BuilderType zzaP() {
        BuilderType buildertype = (BuilderType) zzbt().zzcZ();
        buildertype.f8682e = zzbs();
        return buildertype;
    }

    public BuilderType zzbj(MessageType messagetype) {
        if (zzbt().equals(messagetype)) {
            return this;
        }
        f();
        zzgyx zzgyxVar = this.f8682e;
        gxd.f18927a.d(zzgyxVar.getClass()).k(zzgyxVar, messagetype);
        return this;
    }

    public BuilderType zzbk(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
        f();
        try {
            g.ah d2 = gxd.f18927a.d(this.f8682e.getClass());
            zzgyx zzgyxVar = this.f8682e;
            hj hjVar = zzgxvVar.f8672b;
            if (hjVar == null) {
                hjVar = new hj(zzgxvVar);
            }
            d2.l(zzgyxVar, hjVar, zzgyhVar);
            return this;
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof IOException) {
                throw ((IOException) e2.getCause());
            }
            throw e2;
        }
    }

    public BuilderType zzbl(byte[] bArr, int i, int i2) throws zzgzm {
        zzgyh zzgyhVar = zzgyh.f8676a;
        gxd gxdVar = gxd.f18927a;
        zzbm(bArr, i, i2, zzgyh.f8677b);
        return this;
    }

    public BuilderType zzbm(byte[] bArr, int i, int i2, zzgyh zzgyhVar) throws zzgzm {
        f();
        try {
            gxd.f18927a.d(this.f8682e.getClass()).d(this.f8682e, bArr, i, i + i2, new fse(zzgyhVar));
            return this;
        } catch (zzgzm e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e3);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    /* renamed from: zzbn, reason: merged with bridge method [inline-methods] */
    public final MessageType zzbr() {
        MessageType zzbs = zzbs();
        if (zzbs.zzbw()) {
            return zzbs;
        }
        throw new zzhbm(zzbs);
    }

    @Override // com.google.android.gms.internal.ads.zzhah
    /* renamed from: zzbo, reason: merged with bridge method [inline-methods] */
    public MessageType zzbs() {
        if (!this.f8682e.ck()) {
            return (MessageType) this.f8682e;
        }
        zzgyx zzgyxVar = this.f8682e;
        zzgyxVar.getClass();
        gxd.f18927a.d(zzgyxVar.getClass()).g(zzgyxVar);
        zzgyxVar.cn();
        return (MessageType) this.f8682e;
    }

    @Override // com.google.android.gms.internal.ads.zzhaj
    /* renamed from: zzbp, reason: merged with bridge method [inline-methods] */
    public MessageType zzbt() {
        return (MessageType) this.f8681d;
    }

    public /* bridge */ /* synthetic */ zzhah zzbq() {
        zzbg();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzhaj
    public final boolean zzbw() {
        return zzgyx.bs(this.f8682e, false);
    }
}
