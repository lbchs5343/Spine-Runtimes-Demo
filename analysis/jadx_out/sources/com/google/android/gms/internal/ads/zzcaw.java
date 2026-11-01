package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import g.bbh;
import g.dgo;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class zzcaw {
    public static final void zza(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        ViewTreeObserver viewTreeObserver;
        bbh bbhVar = new bbh(view, onGlobalLayoutListener);
        View view2 = (View) ((WeakReference) bbhVar.z).get();
        ViewTreeObserver viewTreeObserver2 = null;
        if (view2 != null && (viewTreeObserver = view2.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
            viewTreeObserver2 = viewTreeObserver;
        }
        if (viewTreeObserver2 != null) {
            viewTreeObserver2.addOnGlobalLayoutListener(bbhVar);
        }
    }

    public static final void zzb(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        ViewTreeObserver viewTreeObserver;
        dgo dgoVar = new dgo(view, onScrollChangedListener);
        View view2 = (View) ((WeakReference) dgoVar.z).get();
        ViewTreeObserver viewTreeObserver2 = null;
        if (view2 != null && (viewTreeObserver = view2.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
            viewTreeObserver2 = viewTreeObserver;
        }
        if (viewTreeObserver2 != null) {
            viewTreeObserver2.addOnScrollChangedListener(dgoVar);
        }
    }
}
