package g;

import android.os.Build;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
public final class fos {

    /* renamed from: a, reason: collision with root package name */
    public final ffg f17158a;

    public fos(NestedScrollView nestedScrollView) {
        if (Build.VERSION.SDK_INT >= 35) {
            this.f17158a = new cfd(nestedScrollView);
        } else {
            this.f17158a = new gpu(11);
        }
    }
}
