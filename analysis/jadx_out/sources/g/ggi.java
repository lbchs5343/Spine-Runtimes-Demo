package g;

import android.view.View;

/* loaded from: classes.dex */
public final class ggi implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f18088a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bgn f18089b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f18090c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f18091d;

    public /* synthetic */ ggi(bgn bgnVar, View view, View view2, int i) {
        this.f18090c = i;
        this.f18089b = bgnVar;
        this.f18091d = view;
        this.f18088a = view2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f18090c) {
            case 0:
                bgn.aj(this.f18089b.t, this.f18091d, this.f18088a);
                break;
            default:
                bgn.aj(this.f18089b.s, this.f18091d, this.f18088a);
                break;
        }
    }
}
