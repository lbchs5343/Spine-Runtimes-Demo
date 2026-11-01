package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.view.View;
import java.util.HashMap;
import java.util.HashSet;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class zzfou {
    public boolean h;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f8115d = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f8118g = new HashMap();
    public final HashMap i = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f8113b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f8114c = new HashSet();

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f8116e = new HashSet();
    public final HashMap j = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f8112a = new HashSet();

    /* renamed from: f, reason: collision with root package name */
    public final WeakHashMap f8117f = new WeakHashMap();

    public final View zza(String str) {
        return (View) this.i.get(str);
    }

    public final zzfot zzb(View view) {
        HashMap hashMap = this.f8118g;
        zzfot zzfotVar = (zzfot) hashMap.get(view);
        if (zzfotVar != null) {
            hashMap.remove(view);
        }
        return zzfotVar;
    }

    public final String zzc(String str) {
        return (String) this.j.get(str);
    }

    public final String zzd(View view) {
        HashMap hashMap = this.f8115d;
        if (hashMap.size() == 0) {
            return null;
        }
        String str = (String) hashMap.get(view);
        if (str != null) {
            hashMap.remove(view);
        }
        return str;
    }

    public final HashSet zze() {
        return this.f8116e;
    }

    public final HashSet zzf() {
        return this.f8114c;
    }

    public final void zzg() {
        this.f8115d.clear();
        this.f8118g.clear();
        this.i.clear();
        this.f8113b.clear();
        this.f8114c.clear();
        this.f8116e.clear();
        this.j.clear();
        this.h = false;
        this.f8112a.clear();
    }

    public final void zzh() {
        this.h = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzi() {
        Boolean bool;
        Activity activity;
        zzfnr zza = zzfnr.zza();
        if (zza != null) {
            for (zzfna zzfnaVar : zza.zzb()) {
                View zzf = zzfnaVar.zzf();
                if (zzfnaVar.zzj()) {
                    String zzh = zzfnaVar.zzh();
                    HashMap hashMap = this.j;
                    HashSet hashSet = this.f8116e;
                    if (zzf != null) {
                        boolean z = false;
                        String str = null;
                        if (Build.VERSION.SDK_INT >= 24) {
                            Context context = zzf.getContext();
                            while (true) {
                                if (!(context instanceof ContextWrapper)) {
                                    activity = null;
                                    break;
                                } else {
                                    if (context instanceof Activity) {
                                        activity = (Activity) context;
                                        break;
                                    }
                                    context = ((ContextWrapper) context).getBaseContext();
                                }
                            }
                            if (activity != null) {
                                z = activity.isInPictureInPictureMode();
                            }
                        }
                        if (z) {
                            this.f8112a.add(zzh);
                        }
                        if (zzf.isAttachedToWindow()) {
                            boolean hasWindowFocus = zzf.hasWindowFocus();
                            WeakHashMap weakHashMap = this.f8117f;
                            if (hasWindowFocus) {
                                weakHashMap.remove(zzf);
                                bool = Boolean.FALSE;
                            } else if (weakHashMap.containsKey(zzf)) {
                                bool = (Boolean) weakHashMap.get(zzf);
                            } else {
                                bool = Boolean.FALSE;
                                weakHashMap.put(zzf, bool);
                            }
                            if (!bool.booleanValue() || z) {
                                HashSet hashSet2 = new HashSet();
                                View view = zzf;
                                while (true) {
                                    if (view == null) {
                                        this.f8113b.addAll(hashSet2);
                                        break;
                                    }
                                    String zza2 = zzfos.zza(view);
                                    if (zza2 != null) {
                                        str = zza2;
                                        break;
                                    } else {
                                        hashSet2.add(view);
                                        Object parent = view.getParent();
                                        view = parent instanceof View ? (View) parent : null;
                                    }
                                }
                            } else {
                                str = "noWindowFocus";
                            }
                        } else {
                            str = "notAttached";
                        }
                        if (str == null) {
                            this.f8114c.add(zzh);
                            this.f8115d.put(zzf, zzh);
                            for (zzfnu zzfnuVar : zzfnaVar.zzi()) {
                                View view2 = (View) zzfnuVar.zzb().get();
                                if (view2 != null) {
                                    HashMap hashMap2 = this.f8118g;
                                    zzfot zzfotVar = (zzfot) hashMap2.get(view2);
                                    if (zzfotVar != null) {
                                        zzfotVar.zzc(zzfnaVar.zzh());
                                    } else {
                                        hashMap2.put(view2, new zzfot(zzfnuVar, zzfnaVar.zzh()));
                                    }
                                }
                            }
                        } else if (str != "noWindowFocus") {
                            hashSet.add(zzh);
                            this.i.put(zzh, zzf);
                            hashMap.put(zzh, str);
                        }
                    } else {
                        hashSet.add(zzh);
                        hashMap.put(zzh, "noAdView");
                    }
                }
            }
        }
    }

    public final boolean zzj(String str) {
        return this.f8112a.contains(str);
    }

    public final boolean zzk(View view) {
        WeakHashMap weakHashMap = this.f8117f;
        if (!weakHashMap.containsKey(view)) {
            return true;
        }
        weakHashMap.put(view, Boolean.TRUE);
        return false;
    }

    public final int zzl(View view) {
        if (this.f8113b.contains(view)) {
            return 1;
        }
        return this.h ? 2 : 3;
    }
}
