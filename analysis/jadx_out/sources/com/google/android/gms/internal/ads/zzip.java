package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;

/* loaded from: classes3.dex */
public final class zzip {

    /* renamed from: a, reason: collision with root package name */
    public final zzin f8767a;

    /* renamed from: b, reason: collision with root package name */
    public final zzg f8768b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8769c;

    /* renamed from: d, reason: collision with root package name */
    public final zzls f8770d;

    /* renamed from: e, reason: collision with root package name */
    public final zzij f8771e;

    /* renamed from: f, reason: collision with root package name */
    public final int f8772f;

    /* renamed from: g, reason: collision with root package name */
    public zzfxg f8773g;
    public final Context h;
    public zzfxg i;
    public final String j;
    public final long k;
    public final boolean l;
    public final Looper m;
    public final zzdc n;
    public final int o;
    public final boolean p;
    public final zzia q;
    public final zzii r;
    public final zzim s;
    public boolean t;

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.zzin] */
    public zzip(final Context context, zzcep zzcepVar) {
        zzii zziiVar = new zzii(zzcepVar);
        zzij zzijVar = new zzij(context);
        zzfxg zzfxgVar = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzik
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return new zzyb(context);
            }
        };
        zzfxg zzfxgVar2 = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzil
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return new zzid();
            }
        };
        zzim zzimVar = new zzim(context);
        ?? r4 = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzin
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                return new zzoa((zzdc) obj);
            }
        };
        context.getClass();
        this.h = context;
        this.r = zziiVar;
        this.f8771e = zzijVar;
        this.f8773g = zzfxgVar;
        this.i = zzfxgVar2;
        this.s = zzimVar;
        this.f8767a = r4;
        this.m = zzen.zzz();
        this.f8768b = zzg.zza;
        this.f8772f = 1;
        this.l = true;
        this.f8770d = zzls.zzb;
        this.q = new zzia(zzen.zzs(20L), zzen.zzs(500L));
        this.n = zzdc.zza;
        this.f8769c = 500L;
        this.k = 2000L;
        this.p = true;
        this.j = "";
        this.o = AVMDLDataLoader.AVMDLErrorIsCreateTask;
    }
}
