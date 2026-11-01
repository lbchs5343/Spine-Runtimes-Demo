package com.bytedance.sdk.openadsdk.core.dislike.ui;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.widget.TTDislikeCommentLayout;

/* loaded from: classes3.dex */
public class d extends Dialog {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.dislike.d.dq f2810d;
    private TTDislikeCommentLayout dq;
    private com.bytedance.sdk.openadsdk.core.dislike.ox.d ox;
    private com.bytedance.sdk.openadsdk.core.dislike.d.d p;
    private EditText s;

    public d(Context context, com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar) {
        super(context);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.ox = dVar;
    }

    private void dq(View view) {
        EditText editText = (EditText) view.findViewById(2047279087);
        this.s = editText;
        dq(editText);
        final TextView textView = (TextView) view.findViewById(2047279088);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String obj = d.this.s.getText().toString();
                if (obj.length() <= 0 || obj.isEmpty()) {
                    return;
                }
                if (d.this.f2810d == null || !d.this.f2810d.dq(obj, d.this)) {
                    com.bytedance.sdk.openadsdk.core.dislike.ox.ox oxVar = new com.bytedance.sdk.openadsdk.core.dislike.ox.ox("0:00", obj);
                    com.bytedance.sdk.openadsdk.core.dislike.dq.dq.dq().dq(d.this.ox, oxVar);
                    d.this.p.dq(0, oxVar);
                    d.this.dismiss();
                }
            }
        });
        ((ImageView) view.findViewById(2047279090)).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                d.this.dismiss();
            }
        });
        final TextView textView2 = (TextView) findViewById(2047279086);
        this.s.addTextChangedListener(new TextWatcher() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.d.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                int round = Math.round(charSequence.length());
                textView2.setText(String.valueOf(round));
                if (round > 0) {
                    textView.setTextColor(-16777216);
                    textView.setClickable(true);
                } else {
                    textView.setTextColor(-7829368);
                    textView.setClickable(false);
                }
            }
        });
    }

    public static void dq(EditText editText) {
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.d.4
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                while (i < i2) {
                    int type = Character.getType(charSequence.charAt(i));
                    if (type == 19 || type == 28) {
                        return "";
                    }
                    i++;
                }
                return null;
            }
        }, new InputFilter.LengthFilter(500)});
    }

    private void s() {
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        window.setAttributes(attributes);
    }

    public void d() {
        EditText editText;
        TTDislikeCommentLayout tTDislikeCommentLayout = this.dq;
        if (tTDislikeCommentLayout == null || (editText = (EditText) tTDislikeCommentLayout.findViewById(2047279087)) == null) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(this.dq.getWindowToken(), 0);
        }
        editText.clearFocus();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ox();
        super.dismiss();
        com.bytedance.sdk.openadsdk.core.dislike.d.d dVar = this.p;
        if (dVar != null) {
            dVar.dq();
        }
    }

    public void dq() {
        EditText editText;
        TTDislikeCommentLayout tTDislikeCommentLayout = this.dq;
        if (tTDislikeCommentLayout == null || (editText = (EditText) tTDislikeCommentLayout.findViewById(2047279087)) == null) {
            return;
        }
        editText.setText((CharSequence) null);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.dislike.d.d dVar) {
        this.p = dVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.dislike.d.dq dqVar) {
        this.f2810d = dqVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar) {
        if (dVar == null) {
            return;
        }
        this.ox = dVar;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.bytedance.sdk.openadsdk.res.p.ox(getContext()));
        TTDislikeCommentLayout tTDislikeCommentLayout = (TTDislikeCommentLayout) findViewById(2047279092);
        this.dq = tTDislikeCommentLayout;
        dq(tTDislikeCommentLayout);
        s();
    }

    public void ox() {
        EditText editText;
        InputMethodManager inputMethodManager;
        TTDislikeCommentLayout tTDislikeCommentLayout = this.dq;
        if (tTDislikeCommentLayout == null || (editText = (EditText) tTDislikeCommentLayout.findViewById(2047279087)) == null || (inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(this.dq.getWindowToken(), 0);
    }

    public String p() {
        EditText editText = this.s;
        return editText != null ? editText.getText().toString() : "";
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        d();
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 80;
        window.setAttributes(attributes);
    }
}
