package com.numericinput;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;

public class PGLNumericInputManager extends SimpleViewManager<PGLNumericInputView> {
    PGLNumericInputManager(ReactApplicationContext context) {
    }
    @NonNull
    @Override
    public String getName() {
        return "PGLNumericInput";
    }

    @NonNull
    @Override
    protected PGLNumericInputView createViewInstance(@NonNull ThemedReactContext themedReactContext) {
        return new PGLNumericInputView(themedReactContext);
    }
}
