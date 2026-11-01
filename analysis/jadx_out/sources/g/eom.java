package g;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public final /* synthetic */ class eom implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15906a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cyz f15907b;

    public /* synthetic */ eom(cyz cyzVar, int i) {
        this.f15906a = i;
        this.f15907b = cyzVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f15906a;
        cyz cyzVar = this.f15907b;
        switch (i) {
            case 0:
                cyzVar.dismiss();
                break;
            case 1:
                cyzVar.am();
                break;
            case 2:
                cyzVar.am();
                break;
            case 3:
                cyzVar.j.callOnClick();
                break;
            case 4:
                cyzVar.an();
                break;
            default:
                String string = cyzVar.getString(R.string.privacy);
                TextView[] textViewArr = {cyzVar.af, cyzVar.aa, cyzVar.i, cyzVar.ae, cyzVar.z, cyzVar.h, cyzVar.y};
                gmn z = ckd.z(cyzVar.k);
                die dieVar = (die) z.z;
                ContextThemeWrapper contextThemeWrapper = dieVar.i;
                LinearLayout linearLayout = new LinearLayout(contextThemeWrapper);
                linearLayout.setOrientation(1);
                int dimensionPixelSize = cyzVar.getResources().getDimensionPixelSize(R.dimen.dp_24);
                int i2 = dimensionPixelSize / 2;
                linearLayout.setPadding(i2, 0, i2, 0);
                if (!TextUtils.isEmpty(null)) {
                    TextView textView = new TextView(contextThemeWrapper);
                    textView.setText((CharSequence) null);
                    textView.setTextColor(eyt.bs(R.attr.colorOnSurfaceVariant, linearLayout));
                    textView.setTextSize(14.0f);
                    textView.setPadding(0, 0, 0, i2);
                    linearLayout.addView(textView);
                }
                dieVar.f14221f = string;
                z.y(R.string.close, null);
                fpl r = z.r();
                int i3 = 0;
                for (int i4 = 7; i3 < i4; i4 = 7) {
                    TextView textView2 = textViewArr[i3];
                    if (textView2.getVisibility() != 8 && !TextUtils.isEmpty(textView2.getText())) {
                        TextView textView3 = new TextView(contextThemeWrapper);
                        textView3.setText(textView2.getText().toString());
                        textView3.setTextSize(16.0f);
                        textView3.setTextColor(eyt.bs(R.attr.colorOnSurface, linearLayout));
                        textView3.setMinHeight(Math.round(cyzVar.getResources().getDisplayMetrics().density * 48.0f));
                        textView3.setGravity(16);
                        int i5 = dimensionPixelSize / 3;
                        textView3.setPadding(i2, i5, i2, i5);
                        TypedValue typedValue = new TypedValue();
                        contextThemeWrapper.getTheme().resolveAttribute(android.R.attr.selectableItemBackground, typedValue, true);
                        textView3.setBackgroundResource(typedValue.resourceId);
                        textView3.setFocusable(true);
                        Drawable ai = fso.ai(contextThemeWrapper, R.drawable.ic_setting_chevron_end);
                        int round = Math.round(cyzVar.getResources().getDisplayMetrics().density * 20.0f);
                        ai.setBounds(0, 0, round, round);
                        textView3.setCompoundDrawablesRelative(null, null, ai, null);
                        textView3.setCompoundDrawablePadding(i2);
                        textView3.setOnClickListener(new ld(0, textView2));
                        linearLayout.addView(textView3, new LinearLayout.LayoutParams(-1, -2));
                    }
                    i3++;
                }
                ScrollView scrollView = new ScrollView(contextThemeWrapper);
                scrollView.addView(linearLayout);
                bgn bgnVar = r.j;
                bgnVar.ag = scrollView;
                bgnVar.f11523b = 0;
                bgnVar.w = false;
                eyt.ay(cyzVar.k, r);
                break;
        }
    }
}
