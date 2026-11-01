package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbuc {

    /* renamed from: a, reason: collision with root package name */
    public View f4997a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f4998b = new HashMap();

    public final zzbuc zzb(View view) {
        this.f4997a = view;
        return this;
    }

    public final zzbuc zzc(Map map) {
        HashMap hashMap = this.f4998b;
        hashMap.clear();
        for (Map.Entry entry : map.entrySet()) {
            View view = (View) entry.getValue();
            if (view != null) {
                hashMap.put((String) entry.getKey(), new WeakReference(view));
            }
        }
        return this;
    }
}
