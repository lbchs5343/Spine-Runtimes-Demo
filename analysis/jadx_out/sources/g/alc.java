package g;

import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class alc extends WindowInsetsAnimation.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10431a;

    /* renamed from: b, reason: collision with root package name */
    public final gcu f10432b;

    /* renamed from: c, reason: collision with root package name */
    public List f10433c;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f10434d;

    public alc(gcu gcuVar) {
        super(0);
        this.f10431a = new HashMap();
        this.f10432b = gcuVar;
    }

    public final cer e(WindowInsetsAnimation windowInsetsAnimation) {
        cer cerVar = (cer) this.f10431a.get(windowInsetsAnimation);
        if (cerVar == null) {
            cerVar = new cer(0, null, 0L);
            if (Build.VERSION.SDK_INT >= 30) {
                cerVar.f12757a = new gfa(windowInsetsAnimation);
            }
            this.f10431a.put(windowInsetsAnimation, cerVar);
        }
        return cerVar;
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        gcu gcuVar = this.f10432b;
        e(windowInsetsAnimation);
        ((View) gcuVar.f17895b).setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.f10431a.remove(windowInsetsAnimation);
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        gcu gcuVar = this.f10432b;
        e(windowInsetsAnimation);
        View view = (View) gcuVar.f17895b;
        int[] iArr = (int[]) gcuVar.f17897d;
        view.getLocationOnScreen(iArr);
        gcuVar.f17898e = iArr[1];
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
        float fraction;
        ArrayList arrayList = this.f10434d;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList(list.size());
            this.f10434d = arrayList2;
            this.f10433c = Collections.unmodifiableList(arrayList2);
        } else {
            arrayList.clear();
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            WindowInsetsAnimation f2 = guj.f(list.get(size));
            cer e2 = e(f2);
            fraction = f2.getFraction();
            e2.f12757a.e(fraction);
            this.f10434d.add(e2);
        }
        gcu gcuVar = this.f10432b;
        anp c2 = anp.c(null, windowInsets);
        gcuVar.h(c2, this.f10433c);
        return c2.j();
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
        Insets lowerBound;
        Insets upperBound;
        gcu gcuVar = this.f10432b;
        e(windowInsetsAnimation);
        lowerBound = bounds.getLowerBound();
        oi h = oi.h(lowerBound);
        upperBound = bounds.getUpperBound();
        oi h2 = oi.h(upperBound);
        View view = (View) gcuVar.f17895b;
        int[] iArr = (int[]) gcuVar.f17897d;
        view.getLocationOnScreen(iArr);
        int i = gcuVar.f17898e - iArr[1];
        gcuVar.f17899f = i;
        view.setTranslationY(i);
        guj.ad();
        return guj.i(h.i(), h2.i());
    }
}
