package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import g.dcy;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzenu implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f7294a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7295b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7296c;

    /* renamed from: d, reason: collision with root package name */
    public final zzffo f7297d;

    public zzenu(zzges zzgesVar, Context context, zzffo zzffoVar, ViewGroup viewGroup) {
        this.f7295b = zzgesVar;
        this.f7296c = context;
        this.f7297d = zzffoVar;
        this.f7294a = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        zzbcn.zza(this.f7296c);
        return this.f7295b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzent
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzenu zzenuVar = zzenu.this;
                zzenuVar.getClass();
                ArrayList arrayList = new ArrayList();
                View view = zzenuVar.f7294a;
                while (view != null) {
                    Object parent = view.getParent();
                    if (parent == null) {
                        break;
                    }
                    int indexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
                    Bundle bundle = new Bundle();
                    bundle.putString("type", parent.getClass().getName());
                    bundle.putInt("index_of_child", indexOfChild);
                    arrayList.add(bundle);
                    if (!(parent instanceof View)) {
                        break;
                    }
                    view = (View) parent;
                }
                return new zzenv(zzenuVar.f7296c, zzenuVar.f7297d.zze, arrayList);
            }
        });
    }
}
