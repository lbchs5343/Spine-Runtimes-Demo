package g;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;

/* loaded from: classes.dex */
public final class fnj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17080a;

    public /* synthetic */ fnj(int i) {
        this.f17080a = i;
    }

    public final Drawable b(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        switch (this.f17080a) {
            case 0:
                String classAttribute = attributeSet.getClassAttribute();
                if (classAttribute != null) {
                    try {
                        Drawable drawable = (Drawable) fnj.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(null).newInstance(null);
                        gik.c(drawable, context.getResources(), xmlResourceParser, attributeSet, theme);
                        break;
                    } catch (Exception e2) {
                        Log.e("DrawableDelegate", "Exception while inflating <drawable>", e2);
                        return null;
                    }
                }
                break;
            case 1:
                try {
                    break;
                } catch (Exception e3) {
                    Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e3);
                    return null;
                }
            case 2:
                try {
                    Resources resources = context.getResources();
                    ahf ahfVar = new ahf(context, 0);
                    ahfVar.inflate(resources, xmlResourceParser, attributeSet, theme);
                    break;
                } catch (Exception e4) {
                    Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e4);
                    return null;
                }
            default:
                try {
                    Resources resources2 = context.getResources();
                    eia eiaVar = new eia();
                    eiaVar.inflate(resources2, xmlResourceParser, attributeSet, theme);
                    break;
                } catch (Exception e5) {
                    Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e5);
                    return null;
                }
        }
        return null;
    }
}
