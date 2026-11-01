package g;

import a.v.ScrollViewWithMaxHeight;
import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class flw extends bvl implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public TextView f17012c;

    /* renamed from: d, reason: collision with root package name */
    public Activity f17013d;

    /* renamed from: e, reason: collision with root package name */
    public String f17014e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f17015f;

    /* renamed from: g, reason: collision with root package name */
    public fei f17016g;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f17016g.b()) {
            int id = view.getId();
            if (id == this.f17015f.getId()) {
                fso.ae(this.f17013d, null, this.f17014e, true);
                dismissAllowingStateLoss();
            } else if (id == this.f17012c.getId()) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.TEXT", this.f17014e);
                intent.setType("text/plain");
                fgj.e().f(this.f17013d, Intent.createChooser(intent, getResources().getText(R.string.share)));
            }
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        if (onCreateDialog != null && onCreateDialog.getWindow() != null) {
            onCreateDialog.getWindow().requestFeature(1);
            onCreateDialog.setCanceledOnTouchOutside(true);
        }
        return onCreateDialog;
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_simple, viewGroup, false);
    }

    @Override // g.bvl, android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f17013d = getActivity();
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
        TextView textView2 = (TextView) view.findViewById(R.id.content);
        String string2 = getArguments().getString("message");
        this.f17014e = string2;
        textView2.setText(string2);
        TextView textView3 = (TextView) view.findViewById(R.id.copy);
        this.f17015f = textView3;
        textView3.setOnClickListener(this);
        TextView textView4 = (TextView) view.findViewById(R.id.share);
        this.f17012c = textView4;
        textView4.setOnClickListener(this);
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) view.findViewById(R.id.content_layout);
        scrollViewWithMaxHeight.setMaxHeight((fso.ag(this.f17013d)[1] * 5) / 12);
        scrollViewWithMaxHeight.setScrollbarFadingEnabled(false);
        new Handler().postDelayed(new aat(scrollViewWithMaxHeight, 5), 1000L);
        this.f17016g = new fei();
        if (getArguments().getBoolean("showa", false)) {
            String f2 = fml.f(this.f17013d);
            Activity activity = this.f17013d;
            b(view, f2, activity.getString(byh.aj(activity) ? R.string.ad_unit_id_info_c : R.string.ad_unit_id_main_g));
            eo eoVar = this.f12271a;
            if (eoVar != null) {
                eku ekuVar = (eku) eoVar;
                ViewGroup viewGroup = (ViewGroup) ekuVar.i.findViewById(R.id.alayout);
                if (viewGroup == null) {
                    return;
                }
                viewGroup.setVisibility(atf.g(ekuVar.l).i() ? 0 : 8);
            }
        }
    }
}
