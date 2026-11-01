package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Process;
import g.akx;
import g.chk;
import g.dcy;
import g.dxw;
import g.esy;
import g.ti;
import java.util.concurrent.Callable;
import pkg.a.ModuleDescriptor;

/* loaded from: classes3.dex */
public final class zzevo implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final String f7611a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7612b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7613c;

    /* renamed from: d, reason: collision with root package name */
    public final akx f7614d;

    public zzevo(zzges zzgesVar, Context context, akx akxVar, String str) {
        this.f7612b = zzgesVar;
        this.f7613c = context;
        this.f7614d = akxVar;
        this.f7611a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 35;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7612b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzevo zzevoVar = zzevo.this;
                Context context = zzevoVar.f7613c;
                boolean d2 = chk.c(context).d();
                esy esyVar = ti.f20033a.z;
                boolean s = esy.s(context);
                String str = zzevoVar.f7614d.afmaVersion;
                int myUid = Process.myUid();
                boolean z = myUid == 0 || myUid == 1000;
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                return new zzevp(d2, s, str, z, applicationInfo == null ? 0 : applicationInfo.targetSdkVersion, dxw.p(context, ModuleDescriptor.MODULE_ID, false), dxw.r(context, ModuleDescriptor.MODULE_ID), zzevoVar.f7611a);
            }
        });
    }
}
