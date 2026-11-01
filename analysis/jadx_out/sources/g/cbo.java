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
public class cbo extends cqo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public TextView f12600a;

    /* renamed from: b, reason: collision with root package name */
    public Activity f12601b;

    /* renamed from: c, reason: collision with root package name */
    public String f12602c;

    /* renamed from: d, reason: collision with root package name */
    public ImageView f12603d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f12604e;

    /* renamed from: f, reason: collision with root package name */
    public fei f12605f;

    public static File g(ImageView imageView, String str) {
        Bitmap bitmap;
        if (!(imageView.getDrawable() instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) imageView.getDrawable()).getBitmap()) == null) {
            return null;
        }
        File file = new File(str);
        file.getParentFile().mkdirs();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return file;
        } catch (IOException unused) {
            return null;
        }
    }

    public final boolean h() {
        if (dyd.aa() || eyt.am(this.f12601b, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        eyt.ak(getActivity(), new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBNM);
        return false;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f12605f.b()) {
            int id = view.getId();
            if (id == this.f12604e.getId()) {
                if (h()) {
                    String af = acw.af(this.f12601b);
                    if (TextUtils.isEmpty(af)) {
                        gm.f(this.f12601b, R.string.save_failed_no_base_folder);
                        return;
                    }
                    String str = this.f12602c;
                    if (str == null) {
                        str = Long.toString(System.currentTimeMillis());
                    }
                    StringBuilder o = awf.o(af);
                    String str2 = File.separator;
                    File g2 = g(this.f12603d, awf.r(o, str2, "images", str2, str));
                    if (g2 == null) {
                        gm.f(this.f12601b, R.string.save_failed);
                        return;
                    } else {
                        gm.g(this.f12601b, R.string.save_file_success, g2.getPath());
                        dismissAllowingStateLoss();
                        return;
                    }
                }
                return;
            }
            if (id == this.f12600a.getId() && h()) {
                String bd = acw.bd(this.f12601b);
                if (TextUtils.isEmpty(bd)) {
                    gm.f(this.f12601b, R.string.share_failed_create_file);
                    return;
                }
                String str3 = this.f12602c;
                if (str3 == null) {
                    str3 = Long.toString(System.currentTimeMillis());
                }
                File g3 = g(this.f12603d, awf.ad(awf.o(bd), File.separator, str3));
                if (g3 == null) {
                    gm.f(this.f12601b, R.string.share_failed_no_base_folder);
                    return;
                }
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("image/*");
                intent.putExtra("android.intent.extra.STREAM", baf.bf(this.f12601b, g3));
                fgj.e().f(this.f12601b, Intent.createChooser(intent, getResources().getText(R.string.share)));
            }
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        return ckd.o(getActivity());
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.cloneInContext(getDialog().getContext()).inflate(R.layout.dialog_image, viewGroup, false);
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
        this.f12601b = getActivity();
        this.f12602c = getArguments().getString("image_name");
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
        this.f12603d = (ImageView) view.findViewById(R.id.image);
        int i = getArguments().getInt("image", 0);
        if (i == 0) {
            String string3 = getArguments().getString("image_url");
            if (TextUtils.isEmpty(string3)) {
                this.f12603d.setVisibility(8);
            } else {
                akf.k().l(string3).d(this.f12603d);
            }
        } else {
            this.f12603d.setImageResource(i);
        }
        TextView textView3 = (TextView) view.findViewById(R.id.save);
        this.f12604e = textView3;
        textView3.setOnClickListener(this);
        TextView textView4 = (TextView) view.findViewById(R.id.share);
        this.f12600a = textView4;
        textView4.setOnClickListener(this);
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) view.findViewById(R.id.content_layout);
        scrollViewWithMaxHeight.setMaxHeight(fso.ag(this.f12601b)[1] / 2);
        scrollViewWithMaxHeight.setScrollbarFadingEnabled(false);
        new Handler().postDelayed(new aat(scrollViewWithMaxHeight, 3), 1000L);
        this.f12605f = new fei();
    }
}
