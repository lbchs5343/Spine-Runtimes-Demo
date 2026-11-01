package com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;

/* loaded from: classes3.dex */
public class PullToRefreshHorizontalRecyclerView extends FrameLayout implements Handler.Callback {
    private static final String dq = "PullToRefreshHorizontalRecyclerView";

    /* renamed from: f, reason: collision with root package name */
    private static long f3249f;

    /* renamed from: d, reason: collision with root package name */
    private RecyclerView f3250d;
    private dq ia;
    private boolean ig;
    private boolean iw;
    private View jy;
    private float kk;
    private boolean mn;
    private MotionEvent mp;
    private Handler no;
    private boolean o;
    private float ox;
    private float p;
    private boolean q;
    private RecyclerView.kk s;

    public interface dq {
        void dq();
    }

    public PullToRefreshHorizontalRecyclerView(Context context) {
        this(context, null);
    }

    public PullToRefreshHorizontalRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PullToRefreshHorizontalRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.kk = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.ig = false;
        dq();
    }

    private void d() {
        if (!this.mn) {
            ox();
        } else {
            s();
            this.mn = false;
        }
    }

    private void dq() {
        addView(com.bytedance.sdk.openadsdk.res.s.xi(getContext()));
        View findViewById = findViewById(2114387789);
        this.jy = findViewById;
        this.f3250d = (RecyclerView) findViewById.findViewById(2114387741);
        this.no = new Handler(Looper.getMainLooper(), this);
        this.kk = ce.ox(getContext(), 64.0f);
    }

    private static boolean dq(long j) {
        boolean z = SystemClock.uptimeMillis() - f3249f <= j;
        f3249f = SystemClock.uptimeMillis();
        return z;
    }

    private void ox() {
        RecyclerView.k s = this.f3250d.s(r0.getAdapter().dq() - 1);
        if (s instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) {
            ((com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) s).dq(this.jy);
        }
    }

    private void p() {
        try {
            RecyclerView.k s = this.f3250d.s(r0.getAdapter().dq() - 1);
            if (s instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) {
                ((com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) s).d(this.jy);
            }
        } catch (Throwable unused) {
        }
    }

    private void s() {
        if (dq(1000L)) {
            this.no.removeMessages(1);
            this.no.sendEmptyMessageDelayed(1, 280L);
            return;
        }
        ox();
        dq dqVar = this.ia;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
    
        if (r0 != 3) goto L21;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    this.mp = motionEvent;
                    if (Math.abs((int) (motionEvent.getRawX() - this.ox)) >= Math.abs((int) (motionEvent.getRawY() - this.p)) || this.iw) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    } else {
                        this.q = false;
                        getParent().requestDisallowInterceptTouchEvent(false);
                    }
                }
            }
            this.q = false;
        } else {
            this.ox = (int) motionEvent.getRawX();
            this.p = (int) motionEvent.getRawY();
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public dq getOnPullToBottomListener() {
        return this.ia;
    }

    public RecyclerView getRecyclerView() {
        return this.f3250d;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            p();
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        RecyclerView recyclerView = this.f3250d;
        if (recyclerView == null || recyclerView.getChildCount() == 0) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.ox = motionEvent.getRawX();
            this.p = motionEvent.getRawY();
            if (this.q) {
                this.iw = true;
                this.q = false;
                return true;
            }
        } else if (action == 2) {
            int rawX = (int) (motionEvent.getRawX() - this.ox);
            if (Math.abs(rawX) < Math.abs((int) (motionEvent.getRawY() - this.p))) {
                d();
            } else {
                RecyclerView.kk layoutManager = this.f3250d.getLayoutManager();
                this.s = layoutManager;
                int mp = layoutManager instanceof com.bytedance.sdk.component.widget.recycler.s ? ((com.bytedance.sdk.component.widget.recycler.s) layoutManager).mp() : -1;
                try {
                    if (rawX >= 0) {
                        this.iw = false;
                    } else {
                        if (mp == this.f3250d.getAdapter().dq() - 1 && !this.ig) {
                            this.iw = true;
                            return true;
                        }
                        this.iw = false;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        RecyclerView recyclerView = this.f3250d;
        if (recyclerView == null || recyclerView.getChildCount() == 0) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.ox = motionEvent.getRawX();
            this.p = motionEvent.getRawY();
            return true;
        }
        if (action != 1) {
            if (action == 2 && this.iw) {
                int rawX = (int) (motionEvent.getRawX() - this.ox);
                if (rawX >= 0) {
                    p();
                    return true;
                }
                try {
                    RecyclerView recyclerView2 = this.f3250d;
                    RecyclerView.k s = recyclerView2.s(recyclerView2.getAdapter().dq() - 1);
                    if (s instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) {
                        ((com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) s).dq(rawX, this.jy);
                        if (Math.abs(rawX) <= this.kk) {
                            this.o = false;
                            ((com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) s).d();
                            this.mn = false;
                            return true;
                        }
                        ((com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) s).dq();
                        this.mn = true;
                        if (!this.o) {
                            this.o = true;
                            ((com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq) s).ox();
                            return true;
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return true;
                }
            }
        } else if (this.iw) {
            d();
            this.iw = false;
        }
        return true;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            return;
        }
        this.no.removeMessages(1);
        this.no.sendEmptyMessageDelayed(1, 280L);
    }

    public void setIsLoadingMore(boolean z) {
        this.ig = z;
    }

    public void setLayoutManager(RecyclerView.kk kkVar) {
        this.f3250d.setLayoutManager(kkVar);
    }

    public void setOnPullToBottomListener(dq dqVar) {
        this.ia = dqVar;
    }
}
