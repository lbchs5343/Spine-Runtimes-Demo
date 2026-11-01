package g;

import android.os.SystemClock;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class gup implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18778a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f18779b;

    public /* synthetic */ gup(int i, Object obj) {
        this.f18778a = i;
        this.f18779b = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.f18778a) {
            case 0:
                ((GestureDetector) this.f18779b).onTouchEvent(motionEvent);
                return true;
            default:
                chp chpVar = (chp) this.f18779b;
                if (motionEvent.getAction() == 1) {
                    long uptimeMillis = SystemClock.uptimeMillis() - chpVar.f12885c;
                    if (uptimeMillis < 0 || uptimeMillis > 300) {
                        chpVar.i = false;
                    }
                    chpVar.al();
                    chpVar.i = true;
                    chpVar.f12885c = SystemClock.uptimeMillis();
                }
                return false;
        }
    }
}
