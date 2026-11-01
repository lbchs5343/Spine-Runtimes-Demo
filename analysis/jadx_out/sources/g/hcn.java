package g;

import a.v.ScrollViewWithMaxHeight;
import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class hcn extends cqo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public fei f19227a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f19228b;

    /* renamed from: c, reason: collision with root package name */
    public Activity f19229c;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f19227a.b() && view.getId() == this.f19228b.getId()) {
            dismissAllowingStateLoss();
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        if (onCreateDialog != null && onCreateDialog.getWindow() != null) {
            onCreateDialog.getWindow().requestFeature(1);
            onCreateDialog.setCanceledOnTouchOutside(false);
        }
        return onCreateDialog;
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_about_d, viewGroup, false);
    }

    @Override // android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f19229c = getActivity();
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
        ((TextView) view.findViewById(R.id.content)).setText(getArguments().getString("message"));
        TextView textView2 = (TextView) view.findViewById(R.id.ok);
        this.f19228b = textView2;
        textView2.setOnClickListener(this);
        Switch r6 = (Switch) view.findViewById(R.id.f21216d);
        r6.setChecked(cro.an(this.f19229c, "datetrinea", false));
        r6.setOnClickListener(new ceo(this, r6, 0));
        Switch r62 = (Switch) view.findViewById(R.id.lab);
        r62.setChecked(cro.an(this.f19229c, "immature", false));
        r62.setOnClickListener(new ceo(this, r62, 1));
        Switch r63 = (Switch) view.findViewById(R.id.always_ord);
        r63.setChecked(cro.an(this.f19229c, "al_or_ways", false));
        r63.setOnClickListener(new ceo(this, r63, 2));
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) view.findViewById(R.id.content_layout);
        scrollViewWithMaxHeight.setMaxHeight(fso.ag(this.f19229c)[1] / 3);
        scrollViewWithMaxHeight.setScrollbarFadingEnabled(false);
        new Handler().postDelayed(new aat(scrollViewWithMaxHeight, 4), 1000L);
        this.f19227a = new fei();
    }
}
