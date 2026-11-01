package g;

import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.util.Objects;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class gdn {
    public static final gdn GONE;
    public static final gdn INVISIBLE;
    public static final gdn REMOVED;
    public static final gdn VISIBLE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gdn[] f17938a;

    static {
        gdn gdnVar = new gdn("REMOVED", 0);
        REMOVED = gdnVar;
        gdn gdnVar2 = new gdn("VISIBLE", 1);
        VISIBLE = gdnVar2;
        gdn gdnVar3 = new gdn("GONE", 2);
        GONE = gdnVar3;
        gdn gdnVar4 = new gdn("INVISIBLE", 3);
        INVISIBLE = gdnVar4;
        f17938a = new gdn[]{gdnVar, gdnVar2, gdnVar3, gdnVar4};
    }

    public static gdn b(int i) {
        if (i == 0) {
            return VISIBLE;
        }
        if (i == 4) {
            return INVISIBLE;
        }
        if (i == 8) {
            return GONE;
        }
        throw new IllegalArgumentException(awf.ac(i, "Unknown visibility "));
    }

    public static gdn c(View view) {
        return (view.getAlpha() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && view.getVisibility() == 0) ? INVISIBLE : b(view.getVisibility());
    }

    public static gdn valueOf(String str) {
        return (gdn) Enum.valueOf(gdn.class, str);
    }

    public static gdn[] values() {
        return (gdn[]) f17938a.clone();
    }

    public final void d(View view) {
        int i = gtz.f18746a[ordinal()];
        if (i == 1) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                if (androidx.fragment.app.v.ao(2)) {
                    view.toString();
                    viewGroup.toString();
                }
                viewGroup.removeView(view);
                return;
            }
            return;
        }
        if (i == 2) {
            if (androidx.fragment.app.v.ao(2)) {
                Objects.toString(view);
            }
            view.setVisibility(0);
        } else if (i == 3) {
            if (androidx.fragment.app.v.ao(2)) {
                Objects.toString(view);
            }
            view.setVisibility(8);
        } else {
            if (i != 4) {
                return;
            }
            if (androidx.fragment.app.v.ao(2)) {
                Objects.toString(view);
            }
            view.setVisibility(4);
        }
    }
}
