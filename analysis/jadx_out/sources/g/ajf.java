package g;

import a.v.ScrollViewWithMaxHeight;
import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentCallbacks2;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import g.fxe;

/* loaded from: classes.dex */
public class ajf extends cqo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public fei f10301a;

    /* renamed from: b, reason: collision with root package name */
    public InputMethodManager f10302b;

    /* renamed from: c, reason: collision with root package name */
    public TextView f10303c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f10304d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f10305e;

    /* renamed from: f, reason: collision with root package name */
    public EditText f10306f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f10307g;
    public Activity h;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(boolean z) {
        CharSequence charSequence;
        ClipData primaryClip;
        ClipData.Item itemAt;
        if (this.f10306f == null) {
            return;
        }
        ClipboardManager clipboardManager = (ClipboardManager) this.h.getSystemService("clipboard");
        if (clipboardManager != null && clipboardManager.hasPrimaryClip() && (primaryClip = clipboardManager.getPrimaryClip()) != null && primaryClip.getDescription().hasMimeType("text/plain") && (itemAt = primaryClip.getItemAt(0)) != null) {
            charSequence = itemAt.getText();
        }
        charSequence = null;
        if (TextUtils.isEmpty(charSequence)) {
            if (z) {
                return;
            }
            gm.e(this.h, R.string.paste_is_null);
        } else {
            String trim = charSequence.toString().trim();
            if (!z || (trim.length() == 32 && trim.endsWith("5a"))) {
                this.f10306f.setText(trim);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f10301a.b()) {
            int id = view.getId();
            if (id == this.f10307g.getId()) {
                if (this.h.getResources().getInteger(R.integer.cchannel) == 3) {
                    acr.bh(getActivity());
                    gm.c(this.h, R.string.copy_tips_alipay_direct);
                    cro.af(this.h, "pud", true);
                    return;
                }
                Activity activity = this.h;
                if (fgj.e().g(activity, activity.getPackageManager().getLaunchIntentForPackage("com.eg.android.AlipayGphone"), false, false, true)) {
                    fso.ae(this.h, "", "trinea.cn@gmail.com", false);
                    gm.h(this.h, R.string.copy_tips_alipay, "trinea.cn@gmail.com");
                    cro.af(this.h, "pud", true);
                    return;
                } else {
                    gm.d(this.h, getString(R.string.open_failed2) + getString(R.string.copy_tips_alipay, "trinea.cn@gmail.com"), 1);
                    return;
                }
            }
            if (id == this.f10303c.getId()) {
                if (acr.br(this.h)) {
                    fso.ae(this.h, "", "TimeMeasurer", false);
                    gm.h(this.h, R.string.copy_tips_wechat, "TimeMeasurer");
                    cro.af(this.h, "pud", true);
                    return;
                } else {
                    gm.d(this.h, getString(R.string.open_failed2) + getString(R.string.copy_tips_wechat, "TimeMeasurer"), 1);
                    return;
                }
            }
            if (id != this.f10304d.getId()) {
                if (id == this.f10305e.getId()) {
                    i(false);
                    return;
                }
                return;
            }
            String obj = this.f10306f.getText().toString();
            if (!TextUtils.isEmpty(obj)) {
                String trim = obj.trim();
                if (!TextUtils.isEmpty(trim) && trim.length() >= 10) {
                    ComponentCallbacks2 activity2 = getActivity();
                    cgm cgmVar = (activity2 == null || !(activity2 instanceof cgm)) ? null : (cgm) activity2;
                    if (cgmVar == null) {
                        gm.i(this.h, R.string.payable_is_null, 1);
                        erl.ai("p able is null in ADialogFragment", new NullPointerException());
                        return;
                    } else {
                        cgmVar.h(trim);
                        dismiss();
                        return;
                    }
                }
            }
            gm.g(this.h, R.string.code_length_tip, 9);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        aoz o = ckd.o(getActivity());
        if (o.getWindow() != null) {
            o.getWindow().setSoftInputMode(16);
        }
        return o;
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.cloneInContext(getDialog().getContext()).inflate(R.layout.dialog_alipay, viewGroup, false);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        i(true);
    }

    @Override // g.cqo, android.app.DialogFragment, android.app.Fragment
    public final void onStart() {
        super.onStart();
        if (getDialog() != null) {
            ckd.al(getDialog());
        }
    }

    @Override // android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        String str;
        double d2;
        double d3;
        super.onViewCreated(view, bundle);
        Activity activity = getActivity();
        this.h = activity;
        this.f10302b = (InputMethodManager) activity.getSystemService("input_method");
        EditText editText = (EditText) view.findViewById(R.id.code);
        this.f10306f = editText;
        editText.setOnClickListener(new get(3, this));
        this.f10306f.setOnEditorActionListener(new gsu(this));
        TextView textView = (TextView) view.findViewById(R.id.purchase_alipay);
        this.f10307g = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) view.findViewById(R.id.purchase_wechat);
        this.f10303c = textView2;
        textView2.setOnClickListener(this);
        TextView textView3 = (TextView) view.findViewById(R.id.active);
        this.f10304d = textView3;
        textView3.setOnClickListener(this);
        TextView textView4 = (TextView) view.findViewById(R.id.paste);
        this.f10305e = textView4;
        textView4.setOnClickListener(this);
        TextView textView5 = (TextView) view.findViewById(R.id.desc);
        textView5.setMovementMethod(LinkMovementMethod.getInstance());
        atf g2 = atf.g(this.h);
        fxe.b l = g2.l();
        if (l != null) {
            fxe.b l2 = g2.l();
            if (l2 != null && l2.isPromotion) {
                String d4 = dlb.d(System.currentTimeMillis(), dlb.f14355b);
                if (d4.compareToIgnoreCase(l2.beginDate) >= 0 && d4.compareToIgnoreCase(l2.endDate) <= 0) {
                    str = l.price;
                }
            }
            str = l.normalPrice;
        } else {
            str = null;
        }
        if (eyt.bq(str) || "null".equals(str)) {
            str = "29";
        }
        textView5.setText(Html.fromHtml(getString(R.string.donation_no_code_desc, str)));
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) view.findViewById(R.id.desc_layout);
        int[] ag = fso.ag(this.h);
        int i = ag[0];
        int i2 = ag[1];
        if (i > i2) {
            d2 = i2;
            d3 = 2.5d;
        } else {
            d2 = i2;
            d3 = 4.5d;
        }
        scrollViewWithMaxHeight.setMaxHeight((int) ((d2 * d3) / 9.0d));
        scrollViewWithMaxHeight.setVerticalScrollBarEnabled(true);
        this.f10301a = new fei();
        if (cro.an(this.h, "pud", false)) {
            this.f10306f.requestFocus();
            return;
        }
        if (this.f10302b != null && getActivity().getCurrentFocus() != null) {
            this.f10302b.hideSoftInputFromWindow(getActivity().getCurrentFocus().getWindowToken(), 2);
        }
        this.f10306f.clearFocus();
    }
}
