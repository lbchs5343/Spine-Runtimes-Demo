package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import g.agd;
import g.akl;
import g.ao;
import g.cbv;
import g.deq;
import g.eno;
import g.fle;
import g.gby;
import g.ph;
import g.qo;

/* loaded from: classes3.dex */
public final class zzban {

    /* renamed from: b, reason: collision with root package name */
    public final qo f4671b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4672c;

    /* renamed from: d, reason: collision with root package name */
    public deq f4673d;

    /* renamed from: e, reason: collision with root package name */
    public final fle f4674e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f4675f;

    /* renamed from: g, reason: collision with root package name */
    public final String f4676g;
    public final zzbpc h = new zzbpc();

    /* renamed from: a, reason: collision with root package name */
    public final ao f4670a = ao.af;

    public zzban(Context context, String str, qo qoVar, int i, fle fleVar) {
        this.f4675f = context;
        this.f4676g = str;
        this.f4671b = qoVar;
        this.f4672c = i;
        this.f4674e = fleVar;
    }

    public final void zza() {
        qo qoVar = this.f4671b;
        try {
            long currentTimeMillis = System.currentTimeMillis();
            eno zzb = eno.zzb();
            ph phVar = cbv.f12612a.f12616e;
            Context context = this.f4675f;
            String str = this.f4676g;
            zzbpc zzbpcVar = this.h;
            phVar.getClass();
            deq deqVar = (deq) new akl(phVar, context, zzb, str, zzbpcVar).j(context, false);
            this.f4673d = deqVar;
            if (deqVar != null) {
                int i = this.f4672c;
                if (i != 3) {
                    this.f4673d.zzI(new gby(i));
                }
                qoVar.h = currentTimeMillis;
                this.f4673d.zzH(new zzbaa(this.f4674e, this.f4676g));
                deq deqVar2 = this.f4673d;
                ao aoVar = this.f4670a;
                Context context2 = this.f4675f;
                aoVar.getClass();
                deqVar2.zzab(ao.ai(context2, qoVar));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }
}
