package g;

import android.content.Context;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public final class brd extends bfa {
    public final /* synthetic */ ese ca;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public brd(ese eseVar, Context context) {
        super(context);
        this.ca = eseVar;
    }

    @Override // g.bfa, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        z = this.ca.mp;
        if (!z) {
            return false;
        }
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // g.bfa, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        z = this.ca.mp;
        if (!z) {
            return false;
        }
        try {
            return super.onTouchEvent(motionEvent);
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
