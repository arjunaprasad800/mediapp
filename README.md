# mediapp
robust flutter application which performs certain operation for the medicine distribution.


{
    "contents": [
        {
            "parts": [
                {
                    "text": "Trigger a function based on this audio input."
                },
                {
                    "inline_data": {
                        "mime_type": "audio/x-wav",
                        "data": "$DATA"
                    }
                }
            ]
        }
    ],
    "tools": [
        {
            "function_declarations": [
                {
                    "name": "changeColor",
                    "description": "Change the default color for the lights in an RGB format. Example: Green would be 0 255 0",
                    "parameters": {
                        "type": "object",
                        "properties": {
                            "red": {
                                "type": "integer",
                                "description": "A value from 0 to 255 for the color RED in an RGB color code"
                            },
                            "green": {
                                "type": "integer",
                                "description": "A value from 0 to 255 for the color GREEN in an RGB color code"
                            },
                            "blue": {
                                "type": "integer",
                                "description": "A value from 0 to 255 for the color BLUE in an RGB color code"
                            }
                        },
                        "required": [
                            "red",
                            "green",
                            "blue"
                        ]
                    }
                },
                {
                    "name": "toggleLights",
                    "description": "Turn on or off the lights",
                    "parameters": {
                        "type": "object",
                        "properties": {
                            "toggle": {
                                "type": "boolean",
                                "description": "Determine if the lights should be turned on or off."
                            }
                        },
                        "required": [
                            "toggle"
                        ]
                    }
                }
            ]
        }
    ]
}
