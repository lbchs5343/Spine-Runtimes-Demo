package g;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class atw extends View {

    /* renamed from: d, reason: collision with root package name */
    public HashMap f10835d;

    /* renamed from: e, reason: collision with root package name */
    public Context f10836e;

    /* renamed from: f, reason: collision with root package name */
    public gbi f10837f;

    /* renamed from: g, reason: collision with root package name */
    public String f10838g;
    public int[] h;
    public int i;
    public String j;

    public abstract void b(brh brhVar, boolean z);

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.h, this.i);
    }

    public final void k(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i = 0; i < this.i; i++) {
            View view = (View) constraintLayout.k.get(this.h[i]);
            if (view != null) {
                view.setVisibility(visibility);
                if (elevation > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    view.setTranslationZ(view.getTranslationZ() + elevation);
                }
            }
        }
    }

    public void l(ConstraintLayout constraintLayout) {
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m(String str) {
        int i;
        HashMap hashMap;
        Context context = this.f10836e;
        if (str == null || str.length() == 0 || context == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (isInEditMode() && constraintLayout != null) {
            Object obj = (awf.n(trim) && (hashMap = constraintLayout.o) != null && hashMap.containsKey(trim)) ? constraintLayout.o.get(trim) : null;
            if (obj instanceof Integer) {
                i = ((Integer) obj).intValue();
                if (i == 0 && constraintLayout != null) {
                    i = n(constraintLayout, trim);
                }
                if (i == 0) {
                    try {
                        i = ewf.class.getField(trim).getInt(null);
                    } catch (Exception unused) {
                    }
                }
                if (i == 0) {
                    i = context.getResources().getIdentifier(trim, TTDownloadField.TT_ID, context.getPackageName());
                }
                if (i == 0) {
                    this.f10835d.put(Integer.valueOf(i), trim);
                    p(i);
                    return;
                }
                return;
            }
        }
        i = 0;
        if (i == 0) {
            i = n(constraintLayout, trim);
        }
        if (i == 0) {
        }
        if (i == 0) {
        }
        if (i == 0) {
        }
    }

    public final int n(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String str2;
        if (str != null && (resources = this.f10836e.getResources()) != null) {
            int childCount = constraintLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = constraintLayout.getChildAt(i);
                if (childAt.getId() != -1) {
                    try {
                        str2 = resources.getResourceEntryName(childAt.getId());
                    } catch (Resources.NotFoundException unused) {
                        str2 = null;
                    }
                    if (str.equals(str2)) {
                        return childAt.getId();
                    }
                }
            }
        }
        return 0;
    }

    public final void o() {
        if (this.f10837f == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof dnk) {
            ((dnk) layoutParams).aw = this.f10837f;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f10838g;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.j;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public final void p(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.i + 1;
        int[] iArr = this.h;
        if (i2 > iArr.length) {
            this.h = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.h;
        int i3 = this.i;
        iArr2[i3] = i;
        this.i = i3 + 1;
    }

    public final void q(String str) {
        if (str == null || str.length() == 0 || this.f10836e == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof dnk) && trim.equals(((dnk) layoutParams).bp) && childAt.getId() != -1) {
                p(childAt.getId());
            }
        }
    }

    public void r(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, bfv.f11480g);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 35) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f10838g = string;
                    setIds(string);
                } else if (index == 36) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.j = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setIds(String str) {
        this.f10838g = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.i = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m(str.substring(i));
                return;
            } else {
                m(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.j = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.i = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                q(str.substring(i));
                return;
            } else {
                q(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f10838g = null;
        this.i = 0;
        for (int i : iArr) {
            p(i);
        }
    }

    @Override // android.view.View
    public final void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f10838g == null) {
            p(i);
        }
    }
}
