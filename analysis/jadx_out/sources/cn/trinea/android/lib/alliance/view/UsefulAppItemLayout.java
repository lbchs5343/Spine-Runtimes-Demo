package cn.trinea.android.lib.alliance.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.trinea.android.developertools.R;
import g.crp;
import g.djm;
import g.ebt;
import g.he;
import java.util.HashMap;

/* loaded from: classes.dex */
public class UsefulAppItemLayout extends ConstraintLayout {
    public boolean w;
    public ebt x;

    public UsefulAppItemLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        ebt ebtVar = new ebt();
        this.x = ebtVar;
        ebtVar.o(this);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        float f2 = getResources().getDisplayMetrics().density;
        boolean z = getResources().getConfiguration().fontScale > 1.3f && ((float) View.MeasureSpec.getSize(i)) < 600.0f * f2;
        if (this.x != null && z != this.w) {
            this.w = z;
            ebt ebtVar = new ebt();
            ebt ebtVar2 = this.x;
            HashMap hashMap = ebtVar.f15258f;
            hashMap.clear();
            for (Integer num : ebtVar2.f15258f.keySet()) {
                djm djmVar = (djm) ebtVar2.f15258f.get(num);
                if (djmVar != null) {
                    hashMap.put(num, djmVar.clone());
                }
            }
            if (this.w) {
                ebtVar.n(R.id.icon);
                ebtVar.n(R.id.name);
                ebtVar.l(R.id.name);
                ebtVar.l(R.id.desc);
                ebtVar.n(R.id.desc);
                int round = Math.round(f2 * 12.0f);
                Integer valueOf = Integer.valueOf(R.id.install);
                HashMap hashMap2 = ebtVar.f15258f;
                if (!hashMap2.containsKey(valueOf)) {
                    hashMap2.put(Integer.valueOf(R.id.install), new djm());
                }
                djm djmVar2 = (djm) hashMap2.get(Integer.valueOf(R.id.install));
                if (djmVar2 != null) {
                    crp crpVar = djmVar2.f14279a;
                    crpVar.ap = R.id.desc;
                    crpVar.v = -1;
                    crpVar.ao = -1;
                    crpVar.ay = -1;
                    crpVar.bo = -1;
                    crpVar.f13398g = round;
                }
            }
            ebtVar.m(this);
            setConstraintSet(null);
            requestLayout();
            ((TextView) findViewById(R.id.name)).setMaxLines(this.w ? 2 : 1);
            ((TextView) findViewById(R.id.desc)).setMaxLines(this.w ? he.UNDEFINED_ITEM_ID : 3);
        }
        super.onMeasure(i, i2);
    }
}
