package androidx.recyclerview.widget;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import com.bytedance.pangle.ZeusPluginEventCallback;
import g.ajd;
import g.goi;
import g.he;
import java.util.Arrays;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f295a;

    /* renamed from: b, reason: collision with root package name */
    public OverScroller f296b;

    /* renamed from: c, reason: collision with root package name */
    public Interpolator f297c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f298d;

    /* renamed from: e, reason: collision with root package name */
    public int f299e;

    /* renamed from: f, reason: collision with root package name */
    public int f300f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f301g;

    public k(RecyclerView recyclerView) {
        this.f295a = recyclerView;
        Interpolator interpolator = RecyclerView.sQuinticInterpolator;
        this.f297c = interpolator;
        this.f298d = false;
        this.f301g = false;
        this.f296b = new OverScroller(recyclerView.getContext(), interpolator);
    }

    public final void h(int i, int i2) {
        RecyclerView recyclerView = this.f295a;
        recyclerView.setScrollState(2);
        this.f300f = 0;
        this.f299e = 0;
        Interpolator interpolator = this.f297c;
        Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
        if (interpolator != interpolator2) {
            this.f297c = interpolator2;
            this.f296b = new OverScroller(recyclerView.getContext(), interpolator2);
        }
        this.f296b.fling(0, 0, i, i2, Integer.MIN_VALUE, he.UNDEFINED_ITEM_ID, Integer.MIN_VALUE, he.UNDEFINED_ITEM_ID);
        i();
    }

    public final void i() {
        if (this.f298d) {
            this.f301g = true;
            return;
        }
        RecyclerView recyclerView = this.f295a;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = goi.f18490c;
        recyclerView.postOnAnimation(this);
    }

    public final void j(int i, int i2, int i3, Interpolator interpolator) {
        RecyclerView recyclerView = this.f295a;
        if (i3 == Integer.MIN_VALUE) {
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z) {
                abs = abs2;
            }
            i3 = Math.min((int) (((abs / width) + 1.0f) * 300.0f), ZeusPluginEventCallback.EVENT_START_LOAD);
        }
        int i4 = i3;
        if (interpolator == null) {
            interpolator = RecyclerView.sQuinticInterpolator;
        }
        if (this.f297c != interpolator) {
            this.f297c = interpolator;
            this.f296b = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.f300f = 0;
        this.f299e = 0;
        recyclerView.setScrollState(2);
        this.f296b.startScroll(0, 0, i, i2, i4);
        if (Build.VERSION.SDK_INT < 23) {
            this.f296b.computeScrollOffset();
        }
        i();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        boolean awakenScrollBars;
        RecyclerView recyclerView = this.f295a;
        if (recyclerView.mLayout == null) {
            recyclerView.removeCallbacks(this);
            this.f296b.abortAnimation();
            return;
        }
        this.f301g = false;
        this.f298d = true;
        recyclerView.consumePendingUpdateOperations();
        OverScroller overScroller = this.f296b;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i5 = currX - this.f299e;
            int i6 = currY - this.f300f;
            this.f299e = currX;
            this.f300f = currY;
            int consumeFlingInHorizontalStretch = recyclerView.consumeFlingInHorizontalStretch(i5);
            int consumeFlingInVerticalStretch = recyclerView.consumeFlingInVerticalStretch(i6);
            int[] iArr = recyclerView.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            if (recyclerView.dispatchNestedPreScroll(consumeFlingInHorizontalStretch, consumeFlingInVerticalStretch, iArr, null, 1)) {
                int[] iArr2 = recyclerView.mReusableIntPair;
                consumeFlingInHorizontalStretch -= iArr2[0];
                consumeFlingInVerticalStretch -= iArr2[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.considerReleasingGlowsOnScroll(consumeFlingInHorizontalStretch, consumeFlingInVerticalStretch);
            }
            if (recyclerView.mAdapter != null) {
                int[] iArr3 = recyclerView.mReusableIntPair;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView.scrollStep(consumeFlingInHorizontalStretch, consumeFlingInVerticalStretch, iArr3);
                int[] iArr4 = recyclerView.mReusableIntPair;
                int i7 = iArr4[0];
                int i8 = iArr4[1];
                int i9 = consumeFlingInHorizontalStretch - i7;
                int i10 = consumeFlingInVerticalStretch - i8;
                i iVar = recyclerView.mLayout.dr;
                if (iVar != null && !iVar.f290e && iVar.f292g) {
                    int p = recyclerView.mState.p();
                    if (p == 0) {
                        iVar.u();
                    } else if (iVar.h >= p) {
                        iVar.h = p - 1;
                        iVar.x(i7, i8);
                    } else {
                        iVar.x(i7, i8);
                    }
                }
                i = i9;
                i3 = i7;
                i2 = i10;
                i4 = i8;
            } else {
                i = consumeFlingInHorizontalStretch;
                i2 = consumeFlingInVerticalStretch;
                i3 = 0;
                i4 = 0;
            }
            if (!recyclerView.mItemDecorations.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr5 = recyclerView.mReusableIntPair;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView.dispatchNestedScroll(i3, i4, i, i2, null, 1, iArr5);
            int[] iArr6 = recyclerView.mReusableIntPair;
            int i11 = i - iArr6[0];
            int i12 = i2 - iArr6[1];
            if (i3 != 0 || i4 != 0) {
                recyclerView.dispatchOnScrolled(i3, i4);
            }
            awakenScrollBars = recyclerView.awakenScrollBars();
            if (!awakenScrollBars) {
                recyclerView.invalidate();
            }
            boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i11 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i12 != 0));
            i iVar2 = recyclerView.mLayout.dr;
            if ((iVar2 == null || !iVar2.f290e) && z) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i13 = i11 < 0 ? -currVelocity : i11 > 0 ? currVelocity : 0;
                    if (i12 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i12 <= 0) {
                        currVelocity = 0;
                    }
                    recyclerView.absorbGlows(i13, currVelocity);
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                    r rVar = recyclerView.mPrefetchRegistry;
                    int[] iArr7 = rVar.f318d;
                    if (iArr7 != null) {
                        Arrays.fill(iArr7, -1);
                    }
                    rVar.f315a = 0;
                }
            } else {
                i();
                e eVar = recyclerView.mGapWorker;
                if (eVar != null) {
                    eVar.h(recyclerView, i3, i4);
                }
            }
            if (Build.VERSION.SDK_INT >= 35) {
                ajd.a(recyclerView, Math.abs(overScroller.getCurrVelocity()));
            }
        }
        i iVar3 = recyclerView.mLayout.dr;
        if (iVar3 != null && iVar3.f290e) {
            iVar3.x(0, 0);
        }
        this.f298d = false;
        if (!this.f301g) {
            recyclerView.setScrollState(0);
            recyclerView.stopNestedScroll(1);
        } else {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap = goi.f18490c;
            recyclerView.postOnAnimation(this);
        }
    }
}
