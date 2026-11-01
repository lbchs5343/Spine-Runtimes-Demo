package g;

import android.graphics.Rect;
import android.view.View;

/* loaded from: classes.dex */
public final class cit {

    /* renamed from: a, reason: collision with root package name */
    public gqj f12949a;

    public static boolean b(View view) {
        if (!view.getLocalVisibleRect(new Rect()) || view.getVisibility() != 0) {
            return false;
        }
        Rect rect = new Rect();
        return ((!view.getLocalVisibleRect(rect) || view.getMeasuredHeight() <= 0) ? -1 : (rect.height() * 100) / view.getMeasuredHeight()) >= 60;
    }
}
