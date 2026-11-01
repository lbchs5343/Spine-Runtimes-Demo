package g;

import android.view.View;
import com.google.android.gms.internal.ads.zzbyh;
import com.google.android.gms.internal.ads.zzcfs;

/* loaded from: classes3.dex */
public final class bzn implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbyh f12516a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzcfs f12517b;

    public bzn(zzcfs zzcfsVar, zzbyh zzbyhVar) {
        this.f12516a = zzbyhVar;
        this.f12517b = zzcfsVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        int i = zzcfs.zzb;
        this.f12517b.ai(view, this.f12516a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
