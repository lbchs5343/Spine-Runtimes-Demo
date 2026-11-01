package g;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

/* loaded from: classes3.dex */
public final class ats extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public final gfk f10824a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10825b;

    public ats(Context context, String str, String str2, String str3) {
        super(context);
        gfk gfkVar = new gfk(context);
        gfkVar.k = str;
        this.f10824a = gfkVar;
        gfkVar.f18036e = str2;
        gfkVar.f18034c = str3;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f10825b) {
            return false;
        }
        this.f10824a.o(motionEvent);
        return false;
    }
}
