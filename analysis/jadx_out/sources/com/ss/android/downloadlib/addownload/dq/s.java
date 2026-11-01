package com.ss.android.downloadlib.addownload.dq;

import android.app.Activity;
import android.app.Dialog;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.adhost.R;

/* loaded from: classes.dex */
public class s extends Dialog {

    /* renamed from: d, reason: collision with root package name */
    private TextView f9156d;
    private TextView dq;
    private boolean ia;
    private String ig;
    private ox iw;
    private Activity kk;
    private boolean mn;
    private String mp;
    private String no;
    private String o;
    private TextView ox;
    private TextView p;
    private p s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private String f9157d;
        private Activity dq;
        private ox ia;
        private boolean iw;
        private p mn;
        private String ox;
        private String p;
        private String s;

        public dq(Activity activity) {
            this.dq = activity;
        }

        public dq d(String str) {
            this.ox = str;
            return this;
        }

        public dq dq(ox oxVar) {
            this.ia = oxVar;
            return this;
        }

        public dq dq(p pVar) {
            this.mn = pVar;
            return this;
        }

        public dq dq(String str) {
            this.f9157d = str;
            return this;
        }

        public dq dq(boolean z) {
            this.iw = z;
            return this;
        }

        public s dq() {
            return new s(this.dq, this.f9157d, this.ox, this.p, this.s, this.iw, this.mn, this.ia);
        }

        public dq ox(String str) {
            this.p = str;
            return this;
        }

        public dq p(String str) {
            this.s = str;
            return this;
        }
    }

    public s(Activity activity, String str, String str2, String str3, String str4, boolean z, p pVar, ox oxVar) {
        super(activity, R.style.ttdownloader_translucent_dialog);
        this.kk = activity;
        this.s = pVar;
        this.o = str;
        this.no = str2;
        this.ig = str3;
        this.mp = str4;
        this.iw = oxVar;
        setCanceledOnTouchOutside(z);
        p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delete() {
        this.ia = true;
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw() {
        dismiss();
    }

    private void p() {
        setContentView(LayoutInflater.from(this.kk.getApplicationContext()).inflate(dq(), (ViewGroup) null));
        this.dq = (TextView) findViewById(d());
        this.f9156d = (TextView) findViewById(ox());
        this.ox = (TextView) findViewById(R.id.message_tv);
        this.p = (TextView) findViewById(R.id.delete_tv);
        if (!TextUtils.isEmpty(this.no)) {
            this.dq.setText(this.no);
        }
        if (!TextUtils.isEmpty(this.ig)) {
            this.f9156d.setText(this.ig);
        }
        if (TextUtils.isEmpty(this.mp)) {
            this.p.setVisibility(8);
        } else {
            this.p.setText(this.mp);
        }
        if (!TextUtils.isEmpty(this.o)) {
            this.ox.setText(this.o);
        }
        this.dq.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.dq.s.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                s.this.s();
            }
        });
        this.f9156d.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.dq.s.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                s.this.iw();
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.dq.s.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                s.this.delete();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        this.mn = true;
        dismiss();
    }

    public int d() {
        return R.id.confirm_tv;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (!this.kk.isFinishing()) {
            this.kk.finish();
        }
        if (this.mn) {
            this.s.dq();
        } else if (this.ia) {
            this.iw.delete();
        } else {
            this.s.d();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public int dq() {
        return R.layout.ttdownloader_dialog_select_operation;
    }

    public int ox() {
        return R.id.cancel_tv;
    }
}
