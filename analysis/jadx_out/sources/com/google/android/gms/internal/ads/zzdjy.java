package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import g.agd;
import g.bjq;
import g.bpp;
import g.ckd;
import g.cmo;
import g.dks;
import g.edt;
import g.ffr;
import g.gil;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdjy {

    /* renamed from: a, reason: collision with root package name */
    public static final ImageView.ScaleType f6107a = ImageView.ScaleType.CENTER_INSIDE;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f6108b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdiy f6109c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdkk f6110d;

    /* renamed from: e, reason: collision with root package name */
    public final gil f6111e;

    /* renamed from: f, reason: collision with root package name */
    public final zzdks f6112f;

    /* renamed from: g, reason: collision with root package name */
    public final zzbfn f6113g;
    public final zzffo h;
    public final zzdiv i;
    public final zzdjd j;
    public final Executor k;

    public zzdjy(gil gilVar, zzffo zzffoVar, zzdjd zzdjdVar, zzdiy zzdiyVar, zzdkk zzdkkVar, zzdks zzdksVar, Executor executor, Executor executor2, zzdiv zzdivVar) {
        this.f6111e = gilVar;
        this.h = zzffoVar;
        this.f6113g = zzffoVar.zzi;
        this.j = zzdjdVar;
        this.f6109c = zzdiyVar;
        this.f6110d = zzdkkVar;
        this.f6112f = zzdksVar;
        this.k = executor;
        this.f6108b = executor2;
        this.i = zzdivVar;
    }

    public static void l(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    public final boolean m(ViewGroup viewGroup, boolean z) {
        zzdiy zzdiyVar = this.f6109c;
        View zzf = z ? zzdiyVar.zzf() : zzdiyVar.zzg();
        if (zzf == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzf.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzf.getParent()).removeView(zzf);
        }
        viewGroup.addView(zzf, ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdU)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    public final void zzc(zzdku zzdkuVar) {
        zzdkk zzdkkVar;
        if (zzdkuVar == null || (zzdkkVar = this.f6110d) == null || zzdkuVar.zzh() == null || !this.j.zzg()) {
            return;
        }
        try {
            zzdkuVar.zzh().addView(zzdkkVar.zza());
        } catch (zzcfw unused) {
            agd.h();
        }
    }

    public final void zzd(zzdku zzdkuVar) {
        if (zzdkuVar == null) {
            return;
        }
        Context context = zzdkuVar.zzf().getContext();
        if (ckd.ah(context, this.j.h)) {
            if (!(context instanceof Activity)) {
                agd.c("Activity context is needed for policy validator.");
                return;
            }
            zzdks zzdksVar = this.f6112f;
            if (zzdksVar == null || zzdkuVar.zzh() == null) {
                return;
            }
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(zzdksVar.zza(zzdkuVar.zzh(), windowManager), ckd.q());
            } catch (zzcfw unused) {
                agd.h();
            }
        }
    }

    public final void zze(final zzdku zzdkuVar) {
        this.k.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjw
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                ViewGroup viewGroup;
                View view;
                final ViewGroup viewGroup2;
                zzbfv zza;
                Drawable drawable;
                final zzdjy zzdjyVar = zzdjy.this;
                zzdku zzdkuVar2 = zzdkuVar;
                zzdiy zzdiyVar = zzdjyVar.f6109c;
                zzdjd zzdjdVar = zzdjyVar.j;
                if (zzdjdVar.zzf() || zzdjdVar.zze()) {
                    String[] strArr = {"1098", "3011"};
                    for (int i = 0; i < 2; i++) {
                        View zzg = zzdkuVar2.zzg(strArr[i]);
                        if (zzg != null && (zzg instanceof ViewGroup)) {
                            viewGroup = (ViewGroup) zzg;
                            break;
                        }
                    }
                }
                viewGroup = null;
                Context context = zzdkuVar2.zzf().getContext();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                if (zzdiyVar.zze() != null) {
                    zzbfn zzbfnVar = zzdjyVar.f6113g;
                    view = zzdiyVar.zze();
                    if (zzbfnVar != null && viewGroup == null) {
                        zzdjy.l(layoutParams, zzbfnVar.zze);
                        view.setLayoutParams(layoutParams);
                        viewGroup = null;
                    }
                } else if (zzdiyVar.zzl() instanceof zzbfi) {
                    zzbfi zzbfiVar = (zzbfi) zzdiyVar.zzl();
                    if (viewGroup == null) {
                        zzdjy.l(layoutParams, zzbfiVar.zzc());
                        viewGroup = null;
                    }
                    zzbfj zzbfjVar = new zzbfj(context, zzbfiVar, layoutParams);
                    zzbfjVar.setContentDescription((CharSequence) edt.f15376a.f15379d.zza(zzbcn.zzdS));
                    view = zzbfjVar;
                } else {
                    view = null;
                }
                if (view != null) {
                    if (view.getParent() instanceof ViewGroup) {
                        ((ViewGroup) view.getParent()).removeView(view);
                    }
                    if (viewGroup != null) {
                        viewGroup.removeAllViews();
                        viewGroup.addView(view);
                    } else {
                        dks dksVar = new dks(zzdkuVar2.zzf().getContext());
                        dksVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                        dksVar.addView(view);
                        FrameLayout zzh = zzdkuVar2.zzh();
                        if (zzh != null) {
                            zzh.addView(dksVar);
                        }
                    }
                    zzdkuVar2.zzq(zzdkuVar2.zzk(), view, true);
                }
                zzfzo zzfzoVar = zzdju.zza;
                int size = zzfzoVar.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        viewGroup2 = null;
                        break;
                    }
                    View zzg2 = zzdkuVar2.zzg((String) zzfzoVar.get(i2));
                    i2++;
                    if (zzg2 instanceof ViewGroup) {
                        viewGroup2 = (ViewGroup) zzg2;
                        break;
                    }
                }
                zzdjyVar.f6108b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjv
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdjy zzdjyVar2 = zzdjy.this;
                        ViewGroup viewGroup3 = viewGroup2;
                        zzffo zzffoVar = zzdjyVar2.h;
                        gil gilVar = zzdjyVar2.f6111e;
                        zzdiy zzdiyVar2 = zzdjyVar2.f6109c;
                        if (zzdiyVar2.zzf() != null) {
                            boolean z = viewGroup3 != null;
                            if (zzdiyVar2.zzc() == 2 || zzdiyVar2.zzc() == 1) {
                                ((cmo) gilVar).an(zzffoVar.zzf, String.valueOf(zzdiyVar2.zzc()), z);
                            } else if (zzdiyVar2.zzc() == 6) {
                                cmo cmoVar = (cmo) gilVar;
                                cmoVar.an(zzffoVar.zzf, "2", z);
                                cmoVar.an(zzffoVar.zzf, "1", z);
                            }
                        }
                    }
                });
                if (viewGroup2 == null) {
                    return;
                }
                if (zzdjyVar.m(viewGroup2, true)) {
                    if (zzdiyVar.zzs() != null) {
                        zzdiyVar.zzs().zzar(new ffr(zzdkuVar2, 18, viewGroup2));
                        return;
                    }
                    return;
                }
                zzbce zzbceVar = zzbcn.zzjH;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && zzdjyVar.m(viewGroup2, false)) {
                    if (zzdiyVar.zzq() != null) {
                        zzdiyVar.zzq().zzar(new ffr(zzdkuVar2, 18, viewGroup2));
                        return;
                    }
                    return;
                }
                viewGroup2.removeAllViews();
                View zzf = zzdkuVar2.zzf();
                Context context2 = zzf != null ? zzf.getContext() : null;
                if (context2 == null || (zza = zzdjyVar.i.zza()) == null) {
                    return;
                }
                try {
                    bjq zzi = zza.zzi();
                    if (zzi == null || (drawable = (Drawable) bpp.b(zzi)) == null) {
                        return;
                    }
                    ImageView imageView = new ImageView(context2);
                    imageView.setImageDrawable(drawable);
                    bjq zzj = zzdkuVar2.zzj();
                    if (zzj != null) {
                        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzgb)).booleanValue()) {
                            imageView.setScaleType((ImageView.ScaleType) bpp.b(zzj));
                            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                            viewGroup2.addView(imageView);
                        }
                    }
                    imageView.setScaleType(zzdjy.f6107a);
                    imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    viewGroup2.addView(imageView);
                } catch (RemoteException unused) {
                    agd.b("Could not get main image drawable");
                }
            }
        });
    }

    public final boolean zzf(ViewGroup viewGroup) {
        return m(viewGroup, false);
    }

    public final boolean zzg(ViewGroup viewGroup) {
        return m(viewGroup, true);
    }
}
