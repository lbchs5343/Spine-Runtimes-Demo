package g;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class ru {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19923a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f19924b;

    /* renamed from: c, reason: collision with root package name */
    public int f19925c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f19926d;

    /* renamed from: e, reason: collision with root package name */
    public int f19927e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f19928f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f19929g;

    public ru(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f19929g = staggeredGridLayoutManager;
        h();
    }

    public final void h() {
        this.f19925c = -1;
        this.f19927e = Integer.MIN_VALUE;
        this.f19928f = false;
        this.f19923a = false;
        this.f19924b = false;
        int[] iArr = this.f19926d;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
