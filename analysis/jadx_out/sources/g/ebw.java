package g;

import android.view.GestureDetector;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class ebw extends doi {

    /* renamed from: c, reason: collision with root package name */
    public final aoi f15262c;

    /* renamed from: d, reason: collision with root package name */
    public final RecyclerView f15263d;

    /* renamed from: e, reason: collision with root package name */
    public View f15264e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f15265f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f15266g = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f15261b = new ArrayList();
    public final fvi h = new fvi(3, this);

    /* renamed from: a, reason: collision with root package name */
    public final axc f15260a = new axc(0, this);

    public ebw(RecyclerView recyclerView, TextView textView, ArrayList arrayList, aoi aoiVar) {
        this.f15262c = aoiVar;
        this.f15263d = recyclerView;
        this.f15265f = textView;
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i) instanceof dpj) {
                this.f15266g.add(Integer.valueOf(i));
                this.f15261b.add(((dpj) arrayList.get(i)).f12721a);
            }
        }
        WeakHashMap weakHashMap = goi.f18490c;
        hej hejVar = new hej(R.id.tag_accessibility_heading, Boolean.class, 0, 28, 3);
        Boolean bool = Boolean.TRUE;
        hejVar.f(textView, bool);
        new hej(R.id.tag_screen_reader_focusable, Boolean.class, 0, 28, 0).f(textView, bool);
        textView.setOnTouchListener(new gup(0, new GestureDetector(textView.getContext(), new gjk(recyclerView, textView))));
        recyclerView.addOnScrollListener(this);
        recyclerView.addOnLayoutChangeListener(this.f15260a);
        textView.addOnLayoutChangeListener(this.f15260a);
        recyclerView.post(this.h);
    }

    public final void i() {
        fvi fviVar = this.h;
        RecyclerView recyclerView = this.f15263d;
        recyclerView.removeCallbacks(fviVar);
        recyclerView.removeOnScrollListener(this);
        axc axcVar = this.f15260a;
        recyclerView.removeOnLayoutChangeListener(axcVar);
        TextView textView = this.f15265f;
        textView.removeOnLayoutChangeListener(axcVar);
        textView.setOnTouchListener(null);
        textView.setOnClickListener(null);
        textView.setVisibility(4);
        View view = this.f15264e;
        if (view != null) {
            view.setImportantForAccessibility(0);
        }
    }

    public final void j() {
        ArrayList arrayList;
        View cz;
        View view = this.f15264e;
        if (view != null) {
            view.setImportantForAccessibility(0);
            this.f15264e = null;
        }
        RecyclerView recyclerView = this.f15263d;
        boolean z = recyclerView.getLayoutManager() instanceof LinearLayoutManager;
        TextView textView = this.f15265f;
        if (!z) {
            textView.setVisibility(4);
            return;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        int bv = linearLayoutManager.bv();
        int i = 0;
        int i2 = -1;
        while (true) {
            arrayList = this.f15266g;
            if (i >= arrayList.size() || ((Integer) arrayList.get(i)).intValue() > bv) {
                break;
            }
            i2 = i;
            i++;
        }
        if (i2 < 0) {
            textView.setVisibility(4);
            return;
        }
        View cz2 = linearLayoutManager.cz(((Integer) arrayList.get(i2)).intValue());
        int paddingTop = recyclerView.getPaddingTop();
        if (cz2 != null && cz2.getY() >= paddingTop) {
            textView.setVisibility(4);
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) textView.getLayoutParams();
        if (layoutParams.leftMargin != recyclerView.getPaddingLeft() || layoutParams.rightMargin != recyclerView.getPaddingRight() || layoutParams.topMargin != paddingTop) {
            layoutParams.leftMargin = recyclerView.getPaddingLeft();
            layoutParams.rightMargin = recyclerView.getPaddingRight();
            layoutParams.topMargin = paddingTop;
            textView.setLayoutParams(layoutParams);
        }
        ((amy) this.f15262c.f10570b).o(textView, (String) this.f15261b.get(i2));
        int i3 = i2 + 1;
        int size = arrayList.size();
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (i3 < size && (cz = linearLayoutManager.cz(((Integer) arrayList.get(i3)).intValue())) != null) {
            f2 = Math.min(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (cz.getY() - paddingTop) - textView.getHeight());
        }
        textView.setTranslationY(f2);
        textView.setVisibility(0);
        if (cz2 != null) {
            cz2.setImportantForAccessibility(2);
            this.f15264e = cz2;
        }
    }

    @Override // g.doi
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        j();
    }
}
