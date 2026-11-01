package g;

import a.v.ScrollViewWithMaxHeight;
import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class gvp extends cqo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public TextView f18820a;

    /* renamed from: b, reason: collision with root package name */
    public Activity f18821b;

    /* renamed from: c, reason: collision with root package name */
    public String f18822c;

    /* renamed from: d, reason: collision with root package name */
    public ImageView f18823d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f18824e;

    /* renamed from: f, reason: collision with root package name */
    public fei f18825f;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Bitmap bitmap;
        if (this.f18825f.b()) {
            int id = view.getId();
            if (id == this.f18824e.getId()) {
                if (acr.br(this.f18821b)) {
                    fso.ae(this.f18821b, "", this.f18822c, false);
                    gm.h(this.f18821b, R.string.copy_tips_wechat_friend, this.f18822c);
                    return;
                }
                gm.d(this.f18821b, getString(R.string.open_failed2) + getString(R.string.copy_tips_wechat_friend, this.f18822c), 1);
                return;
            }
            if (id == this.f18820a.getId()) {
                if (!dyd.aa() && eyt.am(this.f18821b, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                    eyt.ak(getActivity(), new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBNM);
                    return;
                }
                String bd = acw.bd(this.f18821b);
                if (TextUtils.isEmpty(bd)) {
                    gm.f(this.f18821b, R.string.share_failed_create_file);
                    return;
                }
                StringBuilder o = awf.o(bd);
                o.append(File.separator);
                o.append(Long.toString(System.currentTimeMillis()));
                String sb = o.toString();
                ImageView imageView = this.f18823d;
                File file = null;
                if ((imageView.getDrawable() instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) imageView.getDrawable()).getBitmap()) != null) {
                    File file2 = new File(sb);
                    file2.getParentFile().mkdirs();
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        file = file2;
                    } catch (IOException unused) {
                    }
                }
                if (file == null) {
                    gm.f(this.f18821b, R.string.share_failed_no_base_folder);
                    return;
                }
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("image/*");
                intent.putExtra("android.intent.extra.STREAM", baf.bf(this.f18821b, file));
                fgj.e().f(this.f18821b, Intent.createChooser(intent, getResources().getText(R.string.share)));
            }
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        return ckd.o(getActivity());
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.cloneInContext(getDialog().getContext()).inflate(R.layout.dialog_add_wechat, viewGroup, false);
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
        super.onViewCreated(view, bundle);
        this.f18821b = getActivity();
        this.f18822c = getArguments().getString("wechat_id");
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
        TextView textView2 = (TextView) view.findViewById(R.id.desc);
        String string2 = getArguments().getString("desc");
        if (TextUtils.isEmpty(string2)) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(string2);
        }
        this.f18823d = (ImageView) view.findViewById(R.id.image);
        int i = getArguments().getInt("image", 0);
        if (i == 0) {
            String string3 = getArguments().getString("image_url");
            if (TextUtils.isEmpty(string3)) {
                this.f18823d.setVisibility(8);
            } else {
                akf.k().l(string3).d(this.f18823d);
            }
        } else {
            this.f18823d.setImageResource(i);
        }
        TextView textView3 = (TextView) view.findViewById(R.id.copy_id_and_jump);
        this.f18824e = textView3;
        textView3.setOnClickListener(this);
        TextView textView4 = (TextView) view.findViewById(R.id.share_and_add);
        this.f18820a = textView4;
        textView4.setOnClickListener(this);
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) view.findViewById(R.id.content_layout);
        scrollViewWithMaxHeight.setMaxHeight(fso.ag(this.f18821b)[1] / 2);
        scrollViewWithMaxHeight.setScrollbarFadingEnabled(false);
        new Handler().postDelayed(new aat(scrollViewWithMaxHeight, 2), 1000L);
        this.f18825f = new fei();
    }
}
