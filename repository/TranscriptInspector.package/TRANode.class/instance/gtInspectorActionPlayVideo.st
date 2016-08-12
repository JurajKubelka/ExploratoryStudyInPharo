gt-inspector-extension
gtInspectorActionPlayVideo
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ self jumpToVideo ];
		icon: GLMUIThemeExtraIcons glamorousPlay;
		title: 'Play video in position'