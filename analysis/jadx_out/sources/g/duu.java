package g;

import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public abstract class duu {

    /* renamed from: f, reason: collision with root package name */
    public final aiu f14858f;
    public final Context h;
    public final String j;
    public final Map k;
    public final dlv l;
    public final ArrayList i = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f14859g = new ArrayList();

    public duu(Context context, dlv dlvVar, String str, Map map) {
        this.h = context;
        this.j = str;
        this.k = map;
        this.f14858f = aiu.b(str);
        this.l = dlvVar;
    }

    public ArrayList b() {
        String e2 = this.f14858f.e();
        m();
        PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(e2, (Keyframe[]) this.f14859g.toArray(new Keyframe[0]));
        ofKeyframe.setEvaluator(e());
        ArrayList arrayList = this.i;
        arrayList.add(ofKeyframe);
        return arrayList;
    }

    public abstract void c();

    public abstract void d(float f2, String str);

    public abstract TypeEvaluator e();

    public String getType() {
        return this.f14858f.c();
    }

    public final void m() {
        Map map = this.k;
        if (map == null || map.size() <= 0) {
            return;
        }
        if (!(map.size() <= 0 ? false : map.containsKey(Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)))) {
            c();
        }
        for (Map.Entry entry : map.entrySet()) {
            if (entry != null) {
                d(((Float) entry.getKey()).floatValue() / 100.0f, (String) entry.getValue());
            }
        }
        if (map.size() > 0 && (map instanceof TreeMap)) {
            Float f2 = (Float) ((TreeMap) map).lastKey();
            if (f2.floatValue() != 100.0f) {
                d(100.0f, (String) map.get(f2));
            }
        }
    }
}
