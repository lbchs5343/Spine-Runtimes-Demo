package g;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* loaded from: classes3.dex */
public final class dpr implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final int f14608a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14609b;

    /* renamed from: c, reason: collision with root package name */
    public final Dialog f14610c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14611d;

    public dpr(Dialog dialog, Rect rect) {
        this.f14610c = dialog;
        this.f14611d = rect.left;
        this.f14608a = rect.top;
        this.f14609b = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(R.id.content);
        int left = findViewById.getLeft() + this.f14611d;
        int width = findViewById.getWidth() + left;
        if (new RectF(left, findViewById.getTop() + this.f14608a, width, findViewById.getHeight() + r4).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.f14609b;
            obtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f14610c.onTouchEvent(obtain);
    }
}
