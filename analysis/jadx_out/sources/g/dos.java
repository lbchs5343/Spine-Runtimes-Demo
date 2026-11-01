package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public final class dos {

    /* renamed from: a, reason: collision with root package name */
    public final float f14540a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14541b;

    /* renamed from: c, reason: collision with root package name */
    public final float f14542c;

    /* renamed from: d, reason: collision with root package name */
    public final float f14543d;

    /* renamed from: e, reason: collision with root package name */
    public final float f14544e;

    public dos(Context context, XmlResourceParser xmlResourceParser) {
        this.f14542c = Float.NaN;
        this.f14543d = Float.NaN;
        this.f14544e = Float.NaN;
        this.f14540a = Float.NaN;
        this.f14541b = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), bfv.h);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 0) {
                int resourceId = obtainStyledAttributes.getResourceId(index, this.f14541b);
                this.f14541b = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new ebt().o((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            } else if (index == 1) {
                this.f14540a = obtainStyledAttributes.getDimension(index, this.f14540a);
            } else if (index == 2) {
                this.f14543d = obtainStyledAttributes.getDimension(index, this.f14543d);
            } else if (index == 3) {
                this.f14544e = obtainStyledAttributes.getDimension(index, this.f14544e);
            } else if (index == 4) {
                this.f14542c = obtainStyledAttributes.getDimension(index, this.f14542c);
            }
        }
        obtainStyledAttributes.recycle();
    }
}
