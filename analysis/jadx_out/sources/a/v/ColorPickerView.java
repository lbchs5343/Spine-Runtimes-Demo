package a.v;

import a.v.ColorPickerView;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.SeekBar;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.aoi;
import g.avv;
import g.bkl;
import g.cux;
import g.ef;
import g.eyt;
import g.fxf;
import g.gm;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ColorPickerView extends LinearLayout {
    private Button btnCancel;
    private Button btnConfirm;
    private Button btnReset;
    private GridView colorGrid;
    private ef colorGridAdapter;
    private List<avv> colorItems;
    private TextView colorName;
    private ImageView colorPreview;
    private TextView colorValue;
    private Context context;
    private String currentColor;
    private TextView customColorClear;
    private EditText customColorInput;
    private String defaultColor;
    private boolean isUpdatingOpacityUI;
    private onButtonClickListener onButtonClickListener;
    private OnColorSelectedListener onColorSelectedListener;
    private SeekBar opacitySeekBar;
    private TextView opacityValue;

    public interface OnColorSelectedListener {
        void onColorSelected(String str);
    }

    public interface onButtonClickListener {
        void onCancel();

        void onConfirm(String str);

        void onReset();
    }

    public ColorPickerView(Context context) {
        super(context);
        this.isUpdatingOpacityUI = false;
        init(context);
    }

    public ColorPickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isUpdatingOpacityUI = false;
        init(context);
    }

    public ColorPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isUpdatingOpacityUI = false;
        init(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String applyAlphaToColor(String str, int i) {
        if (TextUtils.isEmpty(str) || bkl.f11735a.equals(str)) {
            return str;
        }
        try {
            int ax = cux.ax(str);
            return String.format("#%08X", Integer.valueOf(Color.argb(i, Color.red(ax), Color.green(ax), Color.blue(ax))));
        } catch (Exception unused) {
            return str;
        }
    }

    private int extractAlphaFromColor(String str) {
        if (TextUtils.isEmpty(str)) {
            return MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        }
        if (bkl.f11735a.equals(str)) {
            return 0;
        }
        try {
            return Color.alpha(cux.ax(str));
        } catch (Exception unused) {
            return MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findColorPosition(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        String rGBString = getRGBString(str);
        for (int i = 0; i < this.colorItems.size(); i++) {
            if (rGBString.equals(getRGBString(this.colorItems.get(i).getColor()))) {
                return i;
            }
        }
        return -1;
    }

    private String getColorName(String str) {
        String rGBString = getRGBString(str);
        for (avv avvVar : this.colorItems) {
            if (rGBString.equals(getRGBString(avvVar.getColor()))) {
                return avvVar.getName();
            }
        }
        return this.context.getString(R.string.color_custom);
    }

    private String getRGBString(String str) {
        if (TextUtils.isEmpty(str) || bkl.f11735a.equals(str)) {
            return str;
        }
        try {
            int ax = cux.ax(str);
            return String.format("#%06X", Integer.valueOf(Color.blue(ax) | (Color.red(ax) << 16) | (Color.green(ax) << 8)));
        } catch (Exception unused) {
            return str;
        }
    }

    private void init(Context context) {
        this.context = context;
        LayoutInflater.from(context).inflate(R.layout.color_picker_view, (ViewGroup) this, true);
        initView();
        initData();
    }

    private void initData() {
        Context context = this.context;
        if (bkl.f11736b == null) {
            synchronized (bkl.class) {
                try {
                    if (bkl.f11736b == null) {
                        ArrayList arrayList = new ArrayList();
                        bkl.f11736b = arrayList;
                        arrayList.add(new avv(bkl.f11735a, context.getString(R.string.color_transparent)));
                        bkl.f11736b.add(new avv("#FFFFFF", context.getString(R.string.color_white)));
                        bkl.f11736b.add(new avv("#000000", context.getString(R.string.color_black)));
                        bkl.f11736b.add(new avv("#808080", context.getString(R.string.color_gray)));
                        bkl.f11736b.add(new avv("#D3D3D3", context.getString(R.string.color_light_gray)));
                        bkl.f11736b.add(new avv("#A9A9A9", context.getString(R.string.color_dark_gray)));
                        bkl.f11736b.add(new avv("#FF0000", context.getString(R.string.color_red)));
                        bkl.f11736b.add(new avv("#00FF00", context.getString(R.string.color_green)));
                        bkl.f11736b.add(new avv("#0000FF", context.getString(R.string.color_blue)));
                        bkl.f11736b.add(new avv("#FFFF00", context.getString(R.string.color_yellow)));
                        bkl.f11736b.add(new avv("#FFA500", context.getString(R.string.color_orange)));
                        bkl.f11736b.add(new avv("#800080", context.getString(R.string.color_purple)));
                        bkl.f11736b.add(new avv("#00FFFF", context.getString(R.string.color_cyan)));
                        bkl.f11736b.add(new avv("#FFC0CB", context.getString(R.string.color_pink)));
                        bkl.f11736b.add(new avv("#A52A2A", context.getString(R.string.color_brown)));
                    }
                } finally {
                }
            }
        }
        this.colorItems = bkl.f11736b;
        Context context2 = this.context;
        List<avv> list = this.colorItems;
        ef efVar = new ef();
        efVar.f15415d = -1;
        efVar.f15413b = context2;
        efVar.f15414c = list;
        this.colorGridAdapter = efVar;
        this.colorGrid.setAdapter((ListAdapter) efVar);
        this.colorGridAdapter.f15412a = new aoi(7, this);
        this.customColorInput.addTextChangedListener(new TextWatcher() { // from class: a.v.ColorPickerView.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (ColorPickerView.this.isValidColor(editable.toString().trim())) {
                    ColorPickerView.this.customColorInput.setTextColor(eyt.bs(R.attr.colorOnSurface, ColorPickerView.this.customColorInput));
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        this.customColorInput.setOnEditorActionListener(new fxf(this, 1));
        final int i = 0;
        this.customColorClear.setOnClickListener(new View.OnClickListener(this) { // from class: g.fvx

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ColorPickerView f17494b;

            {
                this.f17494b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        this.f17494b.lambda$initData$2(view);
                        break;
                    case 1:
                        this.f17494b.lambda$initData$3(view);
                        break;
                    case 2:
                        this.f17494b.lambda$initData$4(view);
                        break;
                    default:
                        this.f17494b.lambda$initData$5(view);
                        break;
                }
            }
        });
        SeekBar seekBar = this.opacitySeekBar;
        if (seekBar != null) {
            seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: a.v.ColorPickerView.2
                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onProgressChanged(SeekBar seekBar2, int i2, boolean z) {
                    if (ColorPickerView.this.opacityValue != null) {
                        ColorPickerView.this.opacityValue.setText(i2 + "%");
                    }
                    if (!z || ColorPickerView.this.isUpdatingOpacityUI || ColorPickerView.this.currentColor == null) {
                        return;
                    }
                    int round = Math.round((i2 * 255.0f) / 100.0f);
                    ColorPickerView colorPickerView = ColorPickerView.this;
                    String applyAlphaToColor = colorPickerView.applyAlphaToColor(colorPickerView.currentColor, round);
                    if (applyAlphaToColor.equals(ColorPickerView.this.currentColor)) {
                        return;
                    }
                    ColorPickerView.this.currentColor = applyAlphaToColor;
                    ColorPickerView colorPickerView2 = ColorPickerView.this;
                    colorPickerView2.updateColorPreview(colorPickerView2.currentColor);
                    if (ColorPickerView.this.customColorInput != null) {
                        ColorPickerView colorPickerView3 = ColorPickerView.this;
                        if (colorPickerView3.findColorPosition(colorPickerView3.currentColor) < 0) {
                            ColorPickerView.this.customColorInput.setText(ColorPickerView.this.currentColor);
                            ColorPickerView.this.customColorInput.setTextColor(eyt.bs(R.attr.colorOnSurface, ColorPickerView.this.customColorInput));
                        }
                    }
                    if (ColorPickerView.this.onColorSelectedListener != null) {
                        ColorPickerView.this.onColorSelectedListener.onColorSelected(ColorPickerView.this.currentColor);
                    }
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStartTrackingTouch(SeekBar seekBar2) {
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStopTrackingTouch(SeekBar seekBar2) {
                }
            });
        }
        final int i2 = 1;
        this.btnReset.setOnClickListener(new View.OnClickListener(this) { // from class: g.fvx

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ColorPickerView f17494b;

            {
                this.f17494b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        this.f17494b.lambda$initData$2(view);
                        break;
                    case 1:
                        this.f17494b.lambda$initData$3(view);
                        break;
                    case 2:
                        this.f17494b.lambda$initData$4(view);
                        break;
                    default:
                        this.f17494b.lambda$initData$5(view);
                        break;
                }
            }
        });
        final int i3 = 2;
        this.btnConfirm.setOnClickListener(new View.OnClickListener(this) { // from class: g.fvx

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ColorPickerView f17494b;

            {
                this.f17494b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        this.f17494b.lambda$initData$2(view);
                        break;
                    case 1:
                        this.f17494b.lambda$initData$3(view);
                        break;
                    case 2:
                        this.f17494b.lambda$initData$4(view);
                        break;
                    default:
                        this.f17494b.lambda$initData$5(view);
                        break;
                }
            }
        });
        final int i4 = 3;
        this.btnCancel.setOnClickListener(new View.OnClickListener(this) { // from class: g.fvx

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ColorPickerView f17494b;

            {
                this.f17494b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        this.f17494b.lambda$initData$2(view);
                        break;
                    case 1:
                        this.f17494b.lambda$initData$3(view);
                        break;
                    case 2:
                        this.f17494b.lambda$initData$4(view);
                        break;
                    default:
                        this.f17494b.lambda$initData$5(view);
                        break;
                }
            }
        });
        String str = this.currentColor;
        if (str != null) {
            selectColor(str);
        }
    }

    private void initView() {
        this.colorPreview = (ImageView) findViewById(R.id.color_preview);
        this.colorName = (TextView) findViewById(R.id.color_name);
        this.colorValue = (TextView) findViewById(R.id.color_value);
        this.colorGrid = (GridView) findViewById(R.id.color_grid);
        this.customColorInput = (EditText) findViewById(R.id.custom_color_input);
        this.customColorClear = (TextView) findViewById(R.id.custom_color_clear);
        this.opacitySeekBar = (SeekBar) findViewById(R.id.opacity_seekbar);
        this.opacityValue = (TextView) findViewById(R.id.opacity_value);
        this.btnReset = (Button) findViewById(R.id.btn_reset);
        this.btnCancel = (Button) findViewById(R.id.btn_cancel);
        this.btnConfirm = (Button) findViewById(R.id.btn_confirm);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidColor(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            cux.ax(str.trim());
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$0(avv avvVar, int i) {
        if (avvVar.isCustom()) {
            return;
        }
        selectColor(avvVar.getColor(), i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$initData$1(TextView textView, int i, KeyEvent keyEvent) {
        this.customColorInput.clearFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) this.context.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(this.customColorInput.getWindowToken(), 0);
        }
        String trim = this.customColorInput.getText().toString().trim();
        if (isValidColor(trim)) {
            selectColor(trim);
            return true;
        }
        gm.c(this.context, R.string.invalid_color);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$2(View view) {
        this.customColorInput.setText("");
        this.customColorInput.clearFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$3(View view) {
        selectColor(this.defaultColor);
        onButtonClickListener onbuttonclicklistener = this.onButtonClickListener;
        if (onbuttonclicklistener != null) {
            onbuttonclicklistener.onReset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$4(View view) {
        onButtonClickListener onbuttonclicklistener = this.onButtonClickListener;
        if (onbuttonclicklistener != null) {
            onbuttonclicklistener.onConfirm(this.currentColor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$5(View view) {
        onButtonClickListener onbuttonclicklistener = this.onButtonClickListener;
        if (onbuttonclicklistener != null) {
            onbuttonclicklistener.onCancel();
        }
    }

    private boolean selectColor(String str) {
        return selectColor(str, findColorPosition(str), false);
    }

    private boolean selectColor(String str, int i, boolean z) {
        if (!isValidColor(str)) {
            return false;
        }
        if (z && i >= 0 && this.opacitySeekBar != null) {
            String color = this.colorItems.get(i).getColor();
            if (!bkl.f11735a.equals(color)) {
                str = applyAlphaToColor(color, Math.round((this.opacitySeekBar.getProgress() * 255.0f) / 100.0f));
            }
        }
        if (str.equals(this.currentColor)) {
            updateOpacityUIFromColor(str);
            return true;
        }
        this.currentColor = str;
        updateOpacityUIFromColor(str);
        EditText editText = this.customColorInput;
        if (editText != null) {
            if (i < 0) {
                editText.setText(this.currentColor);
                EditText editText2 = this.customColorInput;
                editText2.setTextColor(eyt.bs(R.attr.colorOnSurface, editText2));
            } else {
                editText.setText("");
            }
        }
        ef efVar = this.colorGridAdapter;
        if (i < 0) {
            i = -1;
        }
        efVar.f15415d = i;
        efVar.notifyDataSetChanged();
        updateColorPreview(this.currentColor);
        OnColorSelectedListener onColorSelectedListener = this.onColorSelectedListener;
        if (onColorSelectedListener != null) {
            onColorSelectedListener.onColorSelected(this.currentColor);
        }
        return true;
    }

    public static void updateColorLayout(View view, TextView textView, TextView textView2, Context context, String str, String str2) {
        updateColorPreview(view, context, str);
        if (textView != null) {
            textView.setText(eyt.bk(str2));
        }
        if (textView2 != null) {
            textView2.setText(eyt.bk(str));
        }
    }

    public static void updateColorPreview(View view, Context context, String str) {
        try {
            if (bkl.f11735a.equals(str)) {
                view.setBackgroundResource(R.drawable.color_circle_bg);
                return;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(cux.ax(str));
            gradientDrawable.setStroke(1, context.getResources().getColor(R.color.colorGridStroke));
            view.setBackground(gradientDrawable);
        } catch (Exception unused) {
            view.setBackgroundResource(R.drawable.color_circle_bg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColorPreview(String str) {
        updateColorLayout(this.colorPreview, this.colorName, this.colorValue, this.context, str, getColorName(str));
    }

    private void updateOpacityUIFromColor(String str) {
        if (this.opacitySeekBar == null || this.opacityValue == null) {
            return;
        }
        int round = Math.round((extractAlphaFromColor(str) * 100.0f) / 255.0f);
        this.isUpdatingOpacityUI = true;
        this.opacitySeekBar.setProgress(round);
        this.opacityValue.setText(round + "%");
        this.isUpdatingOpacityUI = false;
    }

    public String getCurrentColor() {
        return this.currentColor;
    }

    public onButtonClickListener getOnButtonClickListener() {
        return this.onButtonClickListener;
    }

    public void setButtonTexts(String str, String str2, String str3) {
        if (str != null) {
            this.btnReset.setText(str);
        }
        if (str2 != null) {
            this.btnCancel.setText(str2);
        }
        if (str3 != null) {
            this.btnConfirm.setText(str3);
        }
    }

    public void setCurrentColor(String str) {
        selectColor(str);
    }

    public void setCustomColorHint(String str) {
        this.customColorInput.setHint(str);
    }

    public void setDefaultColor(String str) {
        this.defaultColor = str;
    }

    public void setOnButtonClickListener(onButtonClickListener onbuttonclicklistener) {
        this.onButtonClickListener = onbuttonclicklistener;
    }

    public void setOnColorSelectedListener(OnColorSelectedListener onColorSelectedListener) {
        this.onColorSelectedListener = onColorSelectedListener;
    }

    public void setOnConfirmVisible(boolean z) {
        Button button = this.btnConfirm;
        if (button != null) {
            button.setVisibility(z ? 0 : 8);
        }
    }
}
