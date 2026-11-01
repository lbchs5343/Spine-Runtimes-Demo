package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import g.byh;
import g.chw;
import g.dez;
import g.err;
import g.fbr;
import g.fnw;
import g.op;
import g.xo;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzfqi {

    /* renamed from: a, reason: collision with root package name */
    public chw f8153a;

    /* renamed from: b, reason: collision with root package name */
    public chw f8154b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f8155c;

    /* renamed from: d, reason: collision with root package name */
    public final Executor f8156d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfpp f8157e;

    public zzfqi(Context context, Executor executor, zzfpp zzfppVar, zzfpr zzfprVar, fnw fnwVar, op opVar) {
        this.f8155c = context;
        this.f8156d = executor;
        this.f8157e = zzfppVar;
    }

    public static zzfqi zze(Context context, Executor executor, zzfpp zzfppVar, zzfpr zzfprVar) {
        final zzfqi zzfqiVar = new zzfqi(context, executor, zzfppVar, zzfprVar, new fnw(), new op());
        if (zzfprVar.zzh()) {
            chw bd = byh.bd(new Callable() { // from class: com.google.android.gms.internal.ads.zzfqc
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzfqi zzfqiVar2 = zzfqi.this;
                    zzfqiVar2.getClass();
                    zzasf zza = zzata.zza();
                    dez i = xo.i(zzfqiVar2.f8155c);
                    String str = i.f14078a;
                    if (str != null && str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                        UUID fromString = UUID.fromString(str);
                        byte[] bArr = new byte[16];
                        ByteBuffer wrap = ByteBuffer.wrap(bArr);
                        wrap.putLong(fromString.getMostSignificantBits());
                        wrap.putLong(fromString.getLeastSignificantBits());
                        str = Base64.encodeToString(bArr, 11);
                    }
                    if (str != null) {
                        zza.zzs(str);
                        zza.zzr(i.f14079b);
                        zza.zzab(6);
                    }
                    return (zzata) zza.zzbr();
                }
            }, executor);
            bd.i.f(new err(executor, new fbr() { // from class: com.google.android.gms.internal.ads.zzfqe
                @Override // g.fbr
                public final void onFailure(Exception exc) {
                    zzfqi zzfqiVar2 = zzfqi.this;
                    if (exc instanceof InterruptedException) {
                        zzfqiVar2.getClass();
                        Thread.currentThread().interrupt();
                    }
                    zzfqiVar2.f8157e.zzc(2025, -1L, exc);
                }
            }));
            bd.n();
            zzfqiVar.f8153a = bd;
        } else {
            zzfqiVar.f8153a = byh.w(fnw.f17110a);
        }
        chw bd2 = byh.bd(new Callable() { // from class: com.google.android.gms.internal.ads.zzfqd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = zzfqi.this.f8155c;
                return zzfpx.zza(context2, context2.getPackageName(), Integer.toString(context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode));
            }
        }, executor);
        bd2.i.f(new err(executor, new fbr() { // from class: com.google.android.gms.internal.ads.zzfqe
            @Override // g.fbr
            public final void onFailure(Exception exc) {
                zzfqi zzfqiVar2 = zzfqi.this;
                if (exc instanceof InterruptedException) {
                    zzfqiVar2.getClass();
                    Thread.currentThread().interrupt();
                }
                zzfqiVar2.f8157e.zzc(2025, -1L, exc);
            }
        }));
        bd2.n();
        zzfqiVar.f8154b = bd2;
        return zzfqiVar;
    }

    public final zzata zza() {
        chw chwVar = this.f8153a;
        return !chwVar.a() ? fnw.f17110a : (zzata) chwVar.c();
    }

    public final zzata zzb() {
        chw chwVar = this.f8154b;
        return !chwVar.a() ? op.f19770a : (zzata) chwVar.c();
    }
}
