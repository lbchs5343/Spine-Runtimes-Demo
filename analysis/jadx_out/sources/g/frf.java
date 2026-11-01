package g;

import android.view.View;

/* loaded from: classes.dex */
public final class frf {

    /* renamed from: a, reason: collision with root package name */
    public final int f17277a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f17278b;

    /* renamed from: c, reason: collision with root package name */
    public final int f17279c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17280d;

    /* renamed from: e, reason: collision with root package name */
    public final int f17281e;

    /* renamed from: f, reason: collision with root package name */
    public final int f17282f;

    public frf(View view) {
        this.f17279c = view.getPaddingLeft();
        this.f17281e = view.getPaddingTop();
        this.f17282f = view.getPaddingRight();
        this.f17277a = view.getPaddingBottom();
    }
}
