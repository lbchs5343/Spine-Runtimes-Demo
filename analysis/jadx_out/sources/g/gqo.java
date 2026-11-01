package g;

import a.v.ScrollViewWithMaxHeight;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public class gqo extends bvl implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f18589c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f18590d;

    /* renamed from: e, reason: collision with root package name */
    public du f18591e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f18592f;

    /* renamed from: g, reason: collision with root package name */
    public fei f18593g;
    public DialogInterface.OnClickListener i;
    public TextView j;
    public CharSequence k;
    public TextView l;
    public DialogInterface.OnClickListener n;
    public String p;
    public int q;
    public int r;
    public Context s;
    public DialogInterface.OnClickListener t;
    public CharSequence u;
    public int v;
    public boolean o = false;
    public int w = -1;
    public int h = 8;
    public int m = -1;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f18593g.b();
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        aoz o = ckd.o(getActivity());
        o.setCanceledOnTouchOutside(true);
        return o;
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.cloneInContext(getDialog().getContext()).inflate(R.layout.dialog_ad, viewGroup, false);
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        du duVar = this.f18591e;
        if (duVar != null) {
            duVar.onDismiss(dialogInterface);
        }
    }

    @Override // g.cqo, android.app.DialogFragment, android.app.Fragment
    public final void onStart() {
        super.onStart();
        if (getDialog() != null) {
            ckd.al(getDialog());
        }
    }

    @Override // g.bvl, android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        CharSequence charSequence;
        CharSequence charSequence2;
        super.onViewCreated(view, bundle);
        this.s = view.getContext();
        ImageView imageView = (ImageView) view.findViewById(R.id.icon);
        if (getArguments().getInt("icon", 0) == 0) {
            imageView.setVisibility(8);
        } else {
            imageView.setImageResource(getArguments().getInt("icon"));
        }
        TextView textView = (TextView) view.findViewById(R.id.title);
        String string = getArguments().getString(abn.EXTRA_TITLE);
        if (TextUtils.isEmpty(string)) {
            textView.setVisibility(8);
        } else {
            textView.setText(string);
        }
        this.j = (TextView) view.findViewById(R.id.content);
        if (getArguments().containsKey("message")) {
            this.p = getArguments().getString("message");
        }
        if (getArguments().containsKey("message_is_html")) {
            this.o = getArguments().getBoolean("message_is_html", false);
        }
        TextView textView2 = this.j;
        if (textView2 != null) {
            if (this.o) {
                textView2.setMovementMethod(LinkMovementMethod.getInstance());
                TextView textView3 = this.j;
                String str = this.p;
                if (str == null) {
                    str = "";
                }
                textView3.setText(Html.fromHtml(str));
            } else {
                textView2.setText(this.p);
            }
        }
        if (this.m > 0) {
            float dimension = getResources().getDimension(this.m);
            TextView textView4 = this.j;
            if (textView4 != null) {
                textView4.setLineSpacing(dimension, 1.0f);
            }
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.operate_layout);
        int i = this.w;
        if (i == 0) {
            linearLayout.setOrientation(0);
        } else if (i == 1) {
            linearLayout.setOrientation(1);
        }
        TextView textView5 = (TextView) view.findViewById(R.id.ok);
        this.f18592f = textView5;
        textView5.setVisibility(0);
        CharSequence[] charSequenceArr = {this.f18589c, getString(R.string.alert_dialog_ok)};
        if (!acw.n(charSequenceArr)) {
            for (int i2 = 0; i2 < 2; i2++) {
                charSequence = charSequenceArr[i2];
                if (!TextUtils.isEmpty(charSequence)) {
                    break;
                }
            }
        }
        charSequence = null;
        x(this.r, this.i, charSequence);
        TextView textView6 = (TextView) view.findViewById(R.id.neutral);
        this.l = textView6;
        textView6.setVisibility(this.h);
        z(this.v, this.t, this.k);
        TextView textView7 = (TextView) view.findViewById(R.id.cancel);
        this.f18590d = textView7;
        textView7.setVisibility(0);
        CharSequence[] charSequenceArr2 = {this.u, getString(R.string.alert_dialog_cancel)};
        if (!acw.n(charSequenceArr2)) {
            for (int i3 = 0; i3 < 2; i3++) {
                charSequence2 = charSequenceArr2[i3];
                if (!TextUtils.isEmpty(charSequence2)) {
                    break;
                }
            }
        }
        charSequence2 = null;
        y(this.q, this.n, charSequence2);
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) view.findViewById(R.id.content_layout);
        scrollViewWithMaxHeight.setMaxHeight(fso.ag(this.s)[1] / 2);
        scrollViewWithMaxHeight.setScrollbarFadingEnabled(false);
        new Handler().postDelayed(new aat(scrollViewWithMaxHeight, 1), 1000L);
        this.f18593g = new fei();
        String string2 = getArguments().getString("adUnitId", "");
        if (TextUtils.isEmpty(string2)) {
            return;
        }
        b(view, null, string2);
        eo eoVar = this.f12271a;
        if (eoVar != null) {
            eku ekuVar = (eku) eoVar;
            ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.alayout);
            if (viewGroup == null) {
                return;
            }
            viewGroup.setVisibility(atf.g(ekuVar.l).i() ? 0 : 8);
        }
    }

    public final void x(int i, DialogInterface.OnClickListener onClickListener, CharSequence charSequence) {
        this.f18589c = charSequence;
        this.r = i;
        TextView textView = this.f18592f;
        if (textView != null) {
            textView.setText(charSequence);
            if (TextUtils.isEmpty(charSequence)) {
                this.f18592f.setVisibility(8);
            }
            if (i > 0) {
                this.f18592f.setTextColor(eyt.af(this.s, i));
            }
        }
        this.i = onClickListener;
        TextView textView2 = this.f18592f;
        if (textView2 != null) {
            textView2.setOnClickListener(new fmd(this, onClickListener, 0));
        }
    }

    public final void y(int i, DialogInterface.OnClickListener onClickListener, CharSequence charSequence) {
        this.u = charSequence;
        this.q = i;
        TextView textView = this.f18590d;
        if (textView != null) {
            textView.setText(charSequence);
            if (TextUtils.isEmpty(charSequence)) {
                this.f18590d.setVisibility(8);
            }
            if (i > 0) {
                this.f18590d.setTextColor(eyt.af(this.s, i));
            }
        }
        this.n = onClickListener;
        TextView textView2 = this.f18590d;
        if (textView2 != null) {
            textView2.setOnClickListener(new fmd(this, onClickListener, 2));
        }
    }

    public final void z(int i, DialogInterface.OnClickListener onClickListener, CharSequence charSequence) {
        this.k = charSequence;
        this.v = i;
        TextView textView = this.l;
        if (textView != null) {
            textView.setText(charSequence);
            if (TextUtils.isEmpty(charSequence)) {
                this.l.setVisibility(8);
            }
            if (i > 0) {
                this.l.setTextColor(eyt.af(this.s, i));
            }
        }
        this.t = onClickListener;
        TextView textView2 = this.l;
        if (textView2 != null) {
            textView2.setOnClickListener(new fmd(this, onClickListener, 1));
        }
    }
}
